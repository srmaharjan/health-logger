package com.health.logger

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional
class FileUploadService {

	def serviceMethod() {

	}

	boolean transactional = true

	def String uploadFile(MultipartFile file,title, String destinationDirectory){
		println "Inside Upload File Service"
		def servletContext = ServletContextHolder.servletContext
		def storagePath = servletContext.getRealPath("/")

		//Create storage path directory if it does not exist
		def storagePathDirectory = new File(storagePath,destinationDirectory)
		if (!storagePathDirectory.exists()){
			print("CREATING DIRECTORY ${storagePath}: ")
			if (storagePathDirectory.mkdirs()){
				println("SUCCESS")
			}else{
				println("FAILED")
			}
		}

		//Store File
		if (!file.isEmpty()){
			file.transferTo(new File( storagePathDirectory, title))
			println(storagePath)
			return storagePath
		} else{
			println("File ${file.inspect()} was empty!")
			return null
		}
	}

	def getUniqueName(String name){
		def formattedName = name.toString().split("\\.")
		String ext = formattedName.last()

		def randomName = Math.floor(Math.random())*9999999999
		def currentDate = new Date();
		String toSt = randomName.toString()+currentDate.toString()
		return toSt.encodeAsMD5()+"."+ext
	}
}
