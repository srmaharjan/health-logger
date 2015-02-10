package com.health.logger.clinical

import com.healthlogger.customer.Patient

class Medication {
    String name
    String description
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }

    static mapping = {
        autoTimestamp true
    }

    static belongsTo = [patient: Patient]
}