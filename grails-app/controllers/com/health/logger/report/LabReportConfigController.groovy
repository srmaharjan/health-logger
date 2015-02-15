package com.health.logger.report


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LabReportConfigController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LabReportConfig.list(params), model: [labReportConfigInstanceCount: LabReportConfig.count()]
    }

    def show(LabReportConfig labReportConfigInstance) {
        respond labReportConfigInstance
    }

    def create() {
        respond new LabReportConfig(params)
    }

    @Transactional
    def save(LabReportConfig labReportConfigInstance) {
        if (labReportConfigInstance == null) {
            notFound()
            return
        }

        if (labReportConfigInstance.hasErrors()) {
            respond labReportConfigInstance.errors, view: 'create'
            return
        }

        labReportConfigInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'labReportConfig.label', default: 'LabReportConfig'), labReportConfigInstance.id])
                redirect labReportConfigInstance
            }
            '*' { respond labReportConfigInstance, [status: CREATED] }
        }
    }

    def edit(LabReportConfig labReportConfigInstance) {
        respond labReportConfigInstance
    }

    @Transactional
    def update(LabReportConfig labReportConfigInstance) {
        if (labReportConfigInstance == null) {
            notFound()
            return
        }

        if (labReportConfigInstance.hasErrors()) {
            respond labReportConfigInstance.errors, view: 'edit'
            return
        }

        labReportConfigInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LabReportConfig.label', default: 'LabReportConfig'), labReportConfigInstance.id])
                redirect labReportConfigInstance
            }
            '*' { respond labReportConfigInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LabReportConfig labReportConfigInstance) {

        if (labReportConfigInstance == null) {
            notFound()
            return
        }

        labReportConfigInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LabReportConfig.label', default: 'LabReportConfig'), labReportConfigInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'labReportConfig.label', default: 'LabReportConfig'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
