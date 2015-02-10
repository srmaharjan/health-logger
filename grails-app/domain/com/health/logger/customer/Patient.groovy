package com.health.logger.customer

import com.healthlogger.clinical.AcuteDisease
import com.healthlogger.clinical.ChronicDisease
import com.healthlogger.clinical.Doctor
import com.healthlogger.clinical.Medication
import com.healthlogger.report.LabReport

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