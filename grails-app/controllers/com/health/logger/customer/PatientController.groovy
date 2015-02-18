package com.health.logger.customer

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN','ROLE_USER'])
class PatientController {
    def fileUploadService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def dashBoard(Integer max) {
        if(params.search){
            params.max = Math.min(max ?: 10, 100)
            def c = Patient.createCriteria()
            def results = c.list {
                or {
                    ilike("firstName", "%${params.search}%")
                    ilike("middleName", "%${params.search}%")
                    ilike("lastName", "%${params.search}%")
                }
            }
            respond results, model:[patientInstanceCount: results.count()]
        }else{
            params.max = Math.min(max ?: 10, 100)
            respond Patient.list(params), model:[patientInstanceCount: Patient.count()]
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Patient.list(params), model:[patientInstanceCount: Patient.count()]
    }

    def show(Patient patientInstance) {
        respond patientInstance
    }

    def create() {
        respond new Patient(params)
    }

    @Transactional
    def save(Patient patientInstance) {
        if (patientInstance == null) {
            notFound()
            return
        }

        if (patientInstance.hasErrors()) {
            respond patientInstance.errors, view:'create'
            return
        }

        MultipartHttpServletRequest mpr
        CommonsMultipartFile uploadedImage
        if(request instanceof MultipartHttpServletRequest){
            mpr = (MultipartHttpServletRequest)request;
            uploadedImage = (CommonsMultipartFile) mpr.getFile("patientPicture");
        }
        println("IMAGE UPLOAD:::${uploadedImage}")
        params.patientImage= fileUploadService.getUniqueName(uploadedImage.originalFilename.toString())
        patientInstance = new Patient(params)

        if (patientInstance.save(flush: true)) {
            if (!uploadedImage.isEmpty()){
                fileUploadService.uploadFile(uploadedImage,patientInstance.patientImage,"/patientImages/")
            }
            redirect(action: "show",id: patientInstance.id)
        }
        patientInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patient.label', default: 'Patient'), patientInstance.id])
                redirect patientInstance
            }
            '*' { respond patientInstance, [status: CREATED] }
        }
    }

    def edit(Patient patientInstance) {
        respond patientInstance
    }

    @Transactional
    def update(Patient patientInstance) {
        if (patientInstance == null) {
            notFound()
            return
        }

        if (patientInstance.hasErrors()) {
            respond patientInstance.errors, view:'edit'
            return
        }

        patientInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Patient.label', default: 'Patient'), patientInstance.id])
                redirect patientInstance
            }
            '*'{ respond patientInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Patient patientInstance) {

        if (patientInstance == null) {
            notFound()
            return
        }

        patientInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Patient.label', default: 'Patient'), patientInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
