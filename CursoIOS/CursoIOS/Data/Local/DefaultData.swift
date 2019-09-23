
import Foundation


let defaultStudents = [Student(name: "Paco",    email: "colomboamalio@gmail.com",  birthDate: Calendar.current.date(from: DateComponents(year: 1984, month: 7))),
                       Student(name: "Mireya",  email: "miramaremireya@gmail.com", birthDate: Calendar.current.date(from: DateComponents(year: 1985, month: 4))),
                       Student(name: "Maria",   email: "colomboamalio@gmail.com",  birthDate: Calendar.current.date(from: DateComponents(year: 1986, month: 11))),
                       Student(name: "Juan",    email: "colomboml@gmail.com",      birthDate: Calendar.current.date(from: DateComponents(year: 1986, month: 11))),
                       Student(name: "Lorenzo", email: "colomboamalio@gmail.com",  birthDate: Calendar.current.date(from: DateComponents(year: 1988, month: 1))),
                       Student(name: "Laura",   email: "gonzalezl@gmail.com",      birthDate: Calendar.current.date(from: DateComponents(year: 1989, month: 2))),
                       Student(name: "Pablo",   email: "carreñolau@gmail.com",     birthDate: Calendar.current.date(from: DateComponents(year: 1983, month: 3)))]

let defaultTeachers = [Teacher(name: "Monica",  email: "monicalopez@gmail.com", type: .extern),
                       Teacher(name: "david",   email: "jorgedavid@gmail.com",  type: .intern),
                       Teacher(name: "pedro",   email: "pedrop@gmail.com",      type: .intern),
                       Teacher(name: "Eugenia", email: "naranjoeu@gmail.com",   type: .extern)]

//Los ?? indican que si la izquierda es nil se devuelve la derecha
//$0 hace referencia a cada elemento del array
let defaultSubjects = [Subject(name: "Android",    teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false}, students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                       Subject(name: "iOS",        teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false}, students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                       Subject(name: "JavaScript", teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false}, students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                       Subject(name: "Math",       teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false}, students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                       Subject(name: "English",    teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false}, students: defaultStudents.filter{$0.name?.contains("u") ?? false})]
