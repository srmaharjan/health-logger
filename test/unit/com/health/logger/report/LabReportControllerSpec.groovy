package com.health.logger.report



import grails.test.mixin.*
import spock.lang.*

@TestFor(LabReportController)
@Mock(LabReport)
class LabReportControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.labReportInstanceList
            model.labReportInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.labReportInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def labReport = new LabReport()
            labReport.validate()
            controller.save(labReport)

        then:"The create view is rendered again with the correct model"
            model.labReportInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            labReport = new LabReport(params)

            controller.save(labReport)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/labReport/show/1'
            controller.flash.message != null
            LabReport.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def labReport = new LabReport(params)
            controller.show(labReport)

        then:"A model is populated containing the domain instance"
            model.labReportInstance == labReport
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def labReport = new LabReport(params)
            controller.edit(labReport)

        then:"A model is populated containing the domain instance"
            model.labReportInstance == labReport
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/labReport/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def labReport = new LabReport()
            labReport.validate()
            controller.update(labReport)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.labReportInstance == labReport

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            labReport = new LabReport(params).save(flush: true)
            controller.update(labReport)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/labReport/show/$labReport.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/labReport/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def labReport = new LabReport(params).save(flush: true)

        then:"It exists"
            LabReport.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(labReport)

        then:"The instance is deleted"
            LabReport.count() == 0
            response.redirectedUrl == '/labReport/index'
            flash.message != null
    }
}
