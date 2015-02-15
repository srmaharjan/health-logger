package com.health.logger.clinical

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class ChronicDiseaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ChronicDisease.list(params), model: [chronicDiseaseInstanceCount: ChronicDisease.count()]
    }

    def show(ChronicDisease chronicDiseaseInstance) {
        respond chronicDiseaseInstance
    }

    def create() {
        respond new ChronicDisease(params)
    }

    @Transactional
    def save(ChronicDisease chronicDiseaseInstance) {
        if (chronicDiseaseInstance == null) {
            notFound()
            return
        }

        if (chronicDiseaseInstance.hasErrors()) {
            respond chronicDiseaseInstance.errors, view: 'create'
            return
        }

        chronicDiseaseInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chronicDisease.label', default: 'ChronicDisease'), chronicDiseaseInstance.id])
                redirect chronicDiseaseInstance
            }
            '*' { respond chronicDiseaseInstance, [status: CREATED] }
        }
    }

    def edit(ChronicDisease chronicDiseaseInstance) {
        respond chronicDiseaseInstance
    }

    @Transactional
    def update(ChronicDisease chronicDiseaseInstance) {
        if (chronicDiseaseInstance == null) {
            notFound()
            return
        }

        if (chronicDiseaseInstance.hasErrors()) {
            respond chronicDiseaseInstance.errors, view: 'edit'
            return
        }

        chronicDiseaseInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ChronicDisease.label', default: 'ChronicDisease'), chronicDiseaseInstance.id])
                redirect chronicDiseaseInstance
            }
            '*' { respond chronicDiseaseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ChronicDisease chronicDiseaseInstance) {

        if (chronicDiseaseInstance == null) {
            notFound()
            return
        }

        chronicDiseaseInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ChronicDisease.label', default: 'ChronicDisease'), chronicDiseaseInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chronicDisease.label', default: 'ChronicDisease'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
