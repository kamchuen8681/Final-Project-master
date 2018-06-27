//
//  Restaurant.swift
//
//  Created by 諦彰  on 2018/6/27.
//  Copyright © 2018年 csie. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var type: String
    var location: String
    var image: String
    var description: String
    
    
    init(name: String, type: String, location: String, image: String, description: String) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.description = description
    }
    convenience init() {
        self.init(name: "", type: "", location: "", image: "", description: "")
    }
}
