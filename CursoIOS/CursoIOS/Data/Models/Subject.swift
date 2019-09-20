//
//  Subject.swift
//  CursoIOS
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 on. All rights reserved.
//

import Foundation


class Subject {
    var name: String?
    var teachers: [Teacher]?
    var students: [Student]?
    var numTeachers: Int {
        return self.teachers?.count ?? 0
    }
    
    var numStudents: Int {
        return self.students?.count ?? 0
    }
    
    convenience init(name: String, teachers: [Teacher]? = nil, students: [Student]? = nil ) {
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
    }
}
