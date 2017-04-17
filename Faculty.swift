//
//  Faculty.swift
//  CECFaculty
//
//  Created by Mitch Dorfner on 2/26/17.
//  Copyright © 2017 Mitchell Dorfner. All rights reserved.
//

import Foundation

class Faculty {
    var category:String
    var userName:String
    var middleName:String
    var degree:String
    var firstName:String
    var lastName:String
    var title:String
    var bio:String
    
    init(category: String, userName: String, middleName: String, degree: String, firstName: String, lastName: String, title: String, bio: String) {
        self.category = category
        self.userName = userName
        self.middleName = middleName
        self.degree = degree
        self.firstName = firstName
        self.lastName = lastName
        self.title = title
        self.bio = bio
    }
    
    
    convenience init(dict:[String:String]) {
        if let category = dict["category"], let userName = dict["userName"], let middleName = dict["middleName"], let degree = dict["degree"], let firstName = dict["firstName"], let lastName = dict["lastName"], let title = dict["title"], let bio = dict["bio"] {
            
            self.init(category:category, userName: userName, middleName:middleName, degree:degree, firstName:firstName, lastName:lastName, title:title, bio:bio)
            
        } else {
            
            self.init(category:"", userName:"", middleName:"", degree:"", firstName:"", lastName:"", title:"", bio:"")
            
        }
    
    }
    
}
