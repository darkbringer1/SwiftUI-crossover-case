import Foundation

struct AccountInfo: Codable {
	var firstName: String 			= ""
	var lastName: String  			= ""
	var email: String     			= ""
	var details: AccountInfoDetails1 = AccountInfoDetails1()

	var fullName: String {
		  return "\(firstName) \(lastName)"
	}
}

struct AccountInfoDetails1: Codable {
	var studentID: String			= ""
	var campusID: String			= ""
	var gtLevel: String				= ""
	var mapGradeLevel: Int			= 0
	var house: String				= ""

	var level: String {
		get { return "L\(gtLevel)" }
	}
}
