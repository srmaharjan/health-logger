package com.health.logger.clinical

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class AcuteDiseaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AcuteDisease.list(params), model:[acuteDiseaseInstanceCount: AcuteDisease.count()]
    }

    def show(AcuteDisease acuteDiseaseInstance) {
        respond acuteDiseaseInstance
    }

    def create() {
        respond new AcuteDisease(params)
    }

    @Transactional
    def save(AcuteDisease acuteDiseaseInstance) {
        if (acuteDiseaseInstance == null) {
            notFound()
            return
        }

        if (acuteDiseaseInstance.hasErrors()) {
            respond acuteDiseaseInstance.errors, view:'create'
            return
        }

        acuteDiseaseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'acuteDisease.label', default: 'AcuteDisease'), acuteDiseaseInstance.id])
                redirect acuteDiseaseInstance
            }
            '*' { respond acuteDiseaseInstance, [status: CREATED] }
        }
    }

    def edit(AcuteDisease acuteDiseaseInstance) {
        respond acuteDiseaseInstance
    }

    @Transactional
    def update(AcuteDisease acuteDiseaseInstance) {
        if (acuteDiseaseInstance == null) {
            notFound()
            return
        }

        if (acuteDiseaseInstance.hasErrors()) {
            respond acuteDiseaseInstance.errors, view:'edit'
            return
        }

        acuteDiseaseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AcuteDisease.label', default: 'AcuteDisease'), acuteDiseaseInstance.id])
                redirect acuteDiseaseInstance
            }
            '*'{ respond acuteDiseaseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AcuteDisease acuteDiseaseInstance) {

        if (acuteDiseaseInstance == null) {
            notFound()
            return
        }

        acuteDiseaseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AcuteDisease.label', default: 'AcuteDisease'), acuteDiseaseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'acuteDisease.label', default: 'AcuteDisease'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
