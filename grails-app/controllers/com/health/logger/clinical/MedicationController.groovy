package com.health.logger.clinical

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class MedicationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Medication.list(params), model: [medicationInstanceCount: Medication.count()]
    }

    def show(Medication medicationInstance) {
        respond medicationInstance
    }

    def create() {
        respond new Medication(params)
    }

    @Transactional
    def save(Medication medicationInstance) {
        if (medicationInstance == null) {
            notFound()
            return
        }

        if (medicationInstance.hasErrors()) {
            respond medicationInstance.errors, view: 'create'
            return
        }

        medicationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medication.label', default: 'Medication'), medicationInstance.id])
                redirect medicationInstance
            }
            '*' { respond medicationInstance, [status: CREATED] }
        }
    }

    def edit(Medication medicationInstance) {
        respond medicationInstance
    }

    @Transactional
    def update(Medication medicationInstance) {
        if (medicationInstance == null) {
            notFound()
            return
        }

        if (medicationInstance.hasErrors()) {
            respond medicationInstance.errors, view: 'edit'
            return
        }

        medicationInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Medication.label', default: 'Medication'), medicationInstance.id])
                redirect medicationInstance
            }
            '*' { respond medicationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Medication medicationInstance) {

        if (medicationInstance == null) {
            notFound()
            return
        }

        medicationInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Medication.label', default: 'Medication'), medicationInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medication.label', default: 'Medication'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
