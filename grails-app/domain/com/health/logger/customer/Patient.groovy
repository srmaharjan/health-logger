package com.health.logger.customer

import com.health.logger.clinical.AcuteDisease
import com.health.logger.clinical.ChronicDisease
import com.health.logger.clinical.Doctor
import com.health.logger.clinical.Medication
import com.health.logger.report.LabReport

class Patient {
    String firstName
    String middleName
    String lastName
    Date dateCreated
    Date lastUpdated
    String uniqueId
    Integer age
    String sex

    static hasMany = [doctor: Doctor, medication: Medication, acuteDisease:AcuteDisease, chronicDisease:ChronicDisease,
                      labReport:LabReport]

    static constraints = {
        uniqueId(nullable: false, unique: true)
    }

    static mapping = {
        autoTimestamp true
    }

    static belongsTo = [Doctor]

    def getFullName() {firstName + " " + middleName ? middleName + " ":"" + lastName }
}