package com.health.logger.report

import com.healthlogger.customer.Patient

class LabReport {

    String name
    String description
    String type
    Date dateCreated
    Date lastUpdated

    /*These are different values based on types, that are configured in LabReportConfig*/
    String udf1
    String udf2
    String udf3
    String udf4
    String udf5

    static hasOne = [patient:Patient]

    static constraints = {
    }

    static mapping = {
        autoTimestamp true
    }

}
