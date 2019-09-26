
import Foundation


let defaultStudents = [Student(name: "Paco",    email: "colomboamalio@gmail.com",  birthDate: Calendar.current.date(from: DateComponents(year: 1984, month: 7)), avatar: "img_student_2"),
                       Student(name: "Mireya",  email: "miramaremireya@gmail.com", birthDate: Calendar.current.date(from: DateComponents(year: 1985, month: 4)), avatar: "img_student_1"),
                       Student(name: "Maria",   email: "colomboamalio@gmail.com",  birthDate: Calendar.current.date(from: DateComponents(year: 1986, month: 11)), avatar: "img_student_4"),
                       Student(name: "Juan",    email: "colomboml@gmail.com",      birthDate: Calendar.current.date(from: DateComponents(year: 1986, month: 11)), avatar: "img_student_3"),
                       Student(name: "Lorenzo", email: "colomboamalio@gmail.com",  birthDate: Calendar.current.date(from: DateComponents(year: 1988, month: 1)), avatar: "img_student_6"),
                       Student(name: "Laura",   email: "gonzalezl@gmail.com",      birthDate: Calendar.current.date(from: DateComponents(year: 1989, month: 2)),avatar: "img_student_5"),
                       Student(name: "Pablo",   email: "carreñolau@gmail.com",     birthDate: Calendar.current.date(from: DateComponents(year: 1983, month: 3)), avatar: "img_student_7")]

let defaultTeachers = [Teacher(name: "Monica",  email: "monicalopez@gmail.com", type: .extern, avatar: "img_teacher_1"),
                       Teacher(name: "david",   email: "jorgedavid@gmail.com",  type: .intern, avatar: "img_teacher_2"),
                       Teacher(name: "pedro",   email: "pedrop@gmail.com",      type: .intern, avatar: "img_teacher_3"),
                       Teacher(name: "Eugenia", email: "naranjoeu@gmail.com",   type: .extern, avatar: "img_teacher_4")]

//Los ?? indican que si la izquierda es nil se devuelve la derecha
//$0 hace referencia a cada elemento del array
let defaultSubjects = [Subject(name: "Android",    teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false}, students: defaultStudents.filter{$0.name?.contains("a") ?? false}, logo: "img_subject_android"),
                       Subject(name: "iOS",        teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false}, students: defaultStudents.filter{$0.name?.contains("e") ?? false}, logo: "img_subject_ios"),
                       Subject(name: "JavaScript", teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false}, students: defaultStudents.filter{$0.name?.contains("i") ?? false}, logo: "img_subject_javascript"),
                       Subject(name: "Dart",       teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false}, students: defaultStudents.filter{$0.name?.contains("o") ?? false}, logo: "img_subject_dart"),
                       Subject(name: "Python",    teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false}, students: defaultStudents.filter{$0.name?.contains("u") ?? false}, logo: "img_subject_python")]
