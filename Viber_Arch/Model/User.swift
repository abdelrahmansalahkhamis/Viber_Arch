//
//  User.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import Foundation

struct User: Codable{
    var id: Int?
    var firstName: String?
    var lastName: String?
    var avatar: String?
    var creationDate: Int?
}

struct UserViewModel{
    var fullname: String
    var avatar: URL
    var registrationDate: String
    
    var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-DD"
        return dateFormatter
    }()
    
    init(user: User){
        fullname = user.firstName ?? "" + (user.lastName ?? "") ?? ""
        avatar = URL(string: user.avatar ?? "")!
        registrationDate = "Registration Date: \(dateFormatter.string(from: Date(timeIntervalSince1970: Double(user.creationDate ?? 0))))"
    }
}
