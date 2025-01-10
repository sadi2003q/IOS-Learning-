//
//  Lecture 39 Data Model.swift
//  IOS Learning
//
//  Created by  Sadi on 04/01/2025.
//

import SwiftUI

//Making custom Data Model for A student
private struct NewStudent: Identifiable {
    let id = UUID().uuidString
    var name: String
    var age: Int
    var roll: Int
}




struct Lecture_39_Data_Model: View {
    
    //an Array of 10 students of type student
    //let students: [stuudent] = Array(1...10).map(\.self).map { stuudent(name: "Student \( $0 )", age: 20, roll: $0) }
    @State private var students: [NewStudent] = [
        NewStudent(name: "Alice", age: 20, roll: 101),
        NewStudent(name: "Bob", age: 21, roll: 102),
        NewStudent(name: "Charlie", age: 22, roll: 103),
        NewStudent(name: "David", age: 23, roll: 104),
        NewStudent(name: "Eva", age: 19, roll: 105),
        NewStudent(name: "Frank", age: 24, roll: 106),
        NewStudent(name: "Grace", age: 20, roll: 107),
        NewStudent(name: "Hannah", age: 21, roll: 108),
        NewStudent(name: "Ivy", age: 22, roll: 109),
        NewStudent(name: "Jack", age: 23, roll: 110),
        NewStudent(name: "Kevin", age: 19, roll: 111),
        NewStudent(name: "Laura", age: 24, roll: 112),
        NewStudent(name: "Mike", age: 20, roll: 113),
        NewStudent(name: "Nina", age: 22, roll: 114),
        NewStudent(name: "Oliver", age: 23, roll: 115)
        
    ]
    
    
    
    var body: some View {
        VStack {
            List(students) { student in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.blue)
                    VStack(alignment: .leading) {
                        Text("\(student.name)")
                        Text("Age : \(student.age)")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                    }
                    
                    Spacer()
                    
                    Text("\(student.roll)")
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    Lecture_39_Data_Model()
}
