//
//  Student.swift
//  IOS Learning
//
//  Created by  Sadi on 10/01/2025.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class Student: Identifiable {
    var id: String
    var name: String
    var age: Int
    
    init(id: String = UUID().uuidString, name: String, age: Int) {
        self.id = id
        self.name = name
        self.age = age
    }
}


//Create a Swift Data Service that will have the Model Container

class SwiftDataService {
    private let modelContainer: ModelContainer
    private let modelContext: ModelContext
    
    @MainActor
    static let shared = SwiftDataService()
    
    @MainActor
    private init() {
        // Change isStoredInMemoryOnly to false if you would like to see the data persistance after kill/exit the app
        self.modelContainer = try! ModelContainer(for: Student.self, configurations: ModelConfiguration(isStoredInMemoryOnly: false))
        self.modelContext = modelContainer.mainContext
    }
    
    func FetchStudent() -> [Student] {
        do {
            return try modelContext.fetch(FetchDescriptor<Student>())
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    func AddStudent(student: Student) {
        modelContext.insert(student)
        do {
            try modelContext.save()
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    func UpdateStudent(student: Student, name: String, age: Int) {
        student.name = name
        student.age = age
        do {
            try modelContext.save()
        } catch {
            fatalError("Failed to update student: \(error.localizedDescription)")
        }
    }

    func DeleteStudent(student: Student) {
        modelContext.delete(student)
        do {
            try modelContext.save()
        } catch {
            fatalError("Failed to delete student: \(error.localizedDescription)")
        }
    }
}

@Observable
class ExpenseViewModel {
    var students: [Student] = []
    
    private let dataSource: SwiftDataService
    
    init(dataSource: SwiftDataService) {
        self.dataSource = dataSource
        
        // Add dummy expenses to the SwiftData to see if fetching data is works
        
        
        students = dataSource.FetchStudent()
    }
    
    func AddStudent(student: Student) {
       
        dataSource.AddStudent(student: student)
        
        // Manually fetch the latest expenses after add new expense
        students = dataSource.FetchStudent()
    }
    
    func DeleteStudent(student: Student) {
        dataSource.DeleteStudent(student: student)
        
        students = dataSource.FetchStudent()
    }
    
    func UpdateStudent(student: Student, name: String, age: Int) {
        dataSource.UpdateStudent(student: student, name: name, age: age)
        students = dataSource.FetchStudent()
    }
    
    func DeleteAllStudent(student: Student) {
        dataSource.DeleteStudent(student: student)
        students = dataSource.FetchStudent()
    }
}



struct StudentView: View {
    @State private var viewModel = ExpenseViewModel(dataSource: SwiftDataService.shared)
    
    @State private var name: String = ""
    @State private var age: String = ""
    
    @State private var selectedStudent: Student?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Input Fields
                TextField("Enter name", text: $name)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                
                TextField("Enter age", text: $age)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .keyboardType(.numberPad)
                
                // Add / Update Button
                HStack {
                    Button(action: addOrUpdateStudent) {
                        Text(selectedStudent == nil ? "Add Student" : "Update Student")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(selectedStudent == nil ? Color.green : Color.orange)
                            .cornerRadius(8)
                    }
                    
                    Button(action: clearInputs) {
                        Text("Clear")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .cornerRadius(8)
                    }
                }
                
                Divider()
                
                // Student List
                List {
                    ForEach(viewModel.students, id: \.self) { student in
                        VStack(alignment: .leading) {
                            Text("Name: \(student.name)")
                                .font(.headline)
                            Text("Age: \(student.age)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .onTapGesture {
                            selectedStudent = student
                            name = student.name
                            age = "\(student.age)"
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                viewModel.DeleteStudent(student: student)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            .padding()
            .navigationTitle("Student Manager")
        }
    }
    
    // MARK: - Helper Functions
    private func addOrUpdateStudent() {
        guard !name.isEmpty, let studentAge = Int(age) else { return }
        
        if let studentToUpdate = selectedStudent {
            viewModel.UpdateStudent(student: studentToUpdate, name: name, age: studentAge)
            selectedStudent = nil
        } else {
            let newStudent = Student(name: name, age: studentAge)
            viewModel.AddStudent(student: newStudent)
        }
        
        clearInputs()
    }
    
    private func clearInputs() {
        name = ""
        age = ""
        selectedStudent = nil
    }
}

#Preview {
    StudentView()
}
