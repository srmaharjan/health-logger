package com.health.logger.clinical

import com.health.logger.customer.Patient

class AcuteDisease {
    String name
    String description
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }

    static mapping = {
        autoTimestamp true
    }

    static hasMany = [patient: Patient]

    static belongsTo = [Patient]

    String toString(){
        return name
    }
}
