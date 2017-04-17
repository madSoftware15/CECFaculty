//
//  Course.swift
//  CECFaculty
//
//  Created by Mitch Dorfner on 2/27/17.
//  Copyright © 2017 Mitchell Dorfner. All rights reserved.
//

import Foundation

class Course {
    var name:String
    var shortDesc:String
    var longDesc:String
    
    init(name: String, shortDesc: String, longDesc: String) {
        self.name = name
        self.shortDesc = shortDesc
        self.longDesc = longDesc
    }
    
    convenience init(dict: [String:String]) {
        if let name = dict["name"], let shortDesc = dict["shortDesc"], let longDesc = dict["longDesc"] {
            self.init(name: name, shortDesc: shortDesc, longDesc: longDesc)
        } else {
            self.init(name:"", shortDesc:"", longDesc:"")
        }
    }
}
