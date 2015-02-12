package com.health.logger.usermanagement



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ModuleMenuController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ModuleMenu.list(params), model:[moduleMenuInstanceCount: ModuleMenu.count()]
    }

    def show(ModuleMenu moduleMenuInstance) {
        respond moduleMenuInstance
    }

    def create() {
        respond new ModuleMenu(params)
    }

    @Transactional
    def save(ModuleMenu moduleMenuInstance) {
        if (moduleMenuInstance == null) {
            notFound()
            return
        }

        if (moduleMenuInstance.hasErrors()) {
            respond moduleMenuInstance.errors, view:'create'
            return
        }

        moduleMenuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'moduleMenu.label', default: 'ModuleMenu'), moduleMenuInstance.id])
                redirect moduleMenuInstance
            }
            '*' { respond moduleMenuInstance, [status: CREATED] }
        }
    }

    def edit(ModuleMenu moduleMenuInstance) {
        respond moduleMenuInstance
    }

    @Transactional
    def update(ModuleMenu moduleMenuInstance) {
        if (moduleMenuInstance == null) {
            notFound()
            return
        }

        if (moduleMenuInstance.hasErrors()) {
            respond moduleMenuInstance.errors, view:'edit'
            return
        }

        moduleMenuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ModuleMenu.label', default: 'ModuleMenu'), moduleMenuInstance.id])
                redirect moduleMenuInstance
            }
            '*'{ respond moduleMenuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ModuleMenu moduleMenuInstance) {

        if (moduleMenuInstance == null) {
            notFound()
            return
        }

        moduleMenuInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ModuleMenu.label', default: 'ModuleMenu'), moduleMenuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'moduleMenu.label', default: 'ModuleMenu'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
