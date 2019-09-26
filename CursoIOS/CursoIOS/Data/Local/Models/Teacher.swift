//
//  Teacher.swift
//  CursoIOS
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 on. All rights reserved.
//
import Foundation


enum TeacherType: String {
    case intern
    case extern
    
    var description: String {
        switch self {
        case .intern:
            return "Interno"
            
        case .extern:
            return "Externo"
            
        //Por si acaso se añaden más casos más adelante, de esa manera no falla todo el proyecto
        //@unknown default:
        //    return ""
        }
    }
}


class Teacher: Hashable, CustomStringConvertible{

    

    
    
    var name: String?
    var email: String?
    var type: TeacherType?
    var avatar: String?
    
    var description: String {
        return "Teacher data: \(String(describing: name)) \(String(describing: email)) \(String(describing: type))"
    }
    
    
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
    
    convenience init(name: String, email: String? = nil, type: TeacherType? = nil, avatar: String? = nil ) {
        self.init()
        
        self.name = name
        self.email = email
        self.type = type
         self.avatar = avatar
        
        
    }
}

