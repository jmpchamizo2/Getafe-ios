//
//  Subject.swift
//  CursoIOS
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 on. All rights reserved.
//

import Foundation


class Subject : CustomStringConvertible {

    
    var name: String?
    var teachers: [Teacher] = []
    var students: [Student] = []
    var logo: String?
    var numTeachers: Int {
        return self.teachers.count
    }   
    
    var numStudents: Int {
        return self.students.count
    }
    
    
    var description: String {
        return "Teacher data: \(String(describing: name))"
    }
    

    convenience init(name: String, teachers: [Teacher] = [], students: [Student] = [], logo: String? = nil) {
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
        self.logo = logo
    }
}
