package com.health.logger.clinical

import com.health.logger.customer.Patient

class Doctor {
    String firstName
    String middleName
    String lastName
    Date dateCreated
    Date lastUpdated

    String fullName;

    static transients = ['fullName']

    static constraints = {
    }

    static mapping = {
        autoTimestamp true
    }

    static hasMany = [patient:Patient]

    def getFullName() {firstName + " " + middleName ? middleName + " ":"" + lastName }

    String toString(){
        return getFullName()
    }
}