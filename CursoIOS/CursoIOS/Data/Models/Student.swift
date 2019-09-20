//
//  Student.swift
//  CursoIOS
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 on. All rights reserved.
//

import Foundation

class Student: CustomStringConvertible {
    
    var name: String?
    var email: String?
    var birthDate: Date?
    
    var description: String {
        return "Student data: \(String(describing: name)) \(String(describing: email))"
    }
    
    //Cuando igualamos a nil hacemos que el parámetro sea opcional, ahora tenemos dos parámetros opcionales
    convenience init(name: String, email: String? = nil, birthDate: Date? = nil) {
        self.init()
        
        self.name = name
        self.email = email
        self.birthDate = birthDate
        
    }
    
}
