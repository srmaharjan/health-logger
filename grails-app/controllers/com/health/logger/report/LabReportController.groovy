package com.health.logger.report



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LabReportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LabReport.list(params), model:[labReportInstanceCount: LabReport.count()]
    }

    def show(LabReport labReportInstance) {
        respond labReportInstance
    }

    def create() {
        respond new LabReport(params)
    }

    @Transactional
    def save(LabReport labReportInstance) {
        if (labReportInstance == null) {
            notFound()
            return
        }

        if (labReportInstance.hasErrors()) {
            respond labReportInstance.errors, view:'create'
            return
        }

        labReportInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'labReport.label', default: 'LabReport'), labReportInstance.id])
                redirect labReportInstance
            }
            '*' { respond labReportInstance, [status: CREATED] }
        }
    }

    def edit(LabReport labReportInstance) {
        respond labReportInstance
    }

    @Transactional
    def update(LabReport labReportInstance) {
        if (labReportInstance == null) {
            notFound()
            return
        }

        if (labReportInstance.hasErrors()) {
            respond labReportInstance.errors, view:'edit'
            return
        }

        labReportInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LabReport.label', default: 'LabReport'), labReportInstance.id])
                redirect labReportInstance
            }
            '*'{ respond labReportInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LabReport labReportInstance) {

        if (labReportInstance == null) {
            notFound()
            return
        }

        labReportInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LabReport.label', default: 'LabReport'), labReportInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'labReport.label', default: 'LabReport'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
