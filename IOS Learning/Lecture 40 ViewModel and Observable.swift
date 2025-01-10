//
//  Lecture 40 ViewModel.swift
//  IOS Learning
//
//  Created by  Sadi on 04/01/2025.
//

import SwiftUI

private struct Students:Identifiable {
    let id = UUID().uuidString
    let age: Int
    let name: String
    let roll : Int
}


private enum error: LocalizedError {
    case InvalidAge
    case outOfRange
    
    
    var errorDescription: String? {
        switch self {
        case .InvalidAge:
            return "Invalid Age"
            
        case .outOfRange:
            return "Out of Range"
            
        }
    }
    
    var failureReason: String? {
        switch self {
        case .InvalidAge:
            "Please Enter Numbers only, No Other Character is allowed"
        case .outOfRange:
            "Age must be between 15 and 30, Please give an Appropriate age and try again!!! "
            
        }
    }
}

@Observable
private class StudentsViewModel {
    
    var students: [Students] = [
        Students(age: 20, name: "John Doe", roll: 611),
        Students(age: 21, name: "Jane Smith", roll: 612),
        Students(age: 19, name: "Alex Johnson", roll: 613),
        Students(age: 22, name: "Emily Davis", roll: 614),
        Students(age: 21, name: "Michael Brown", roll: 615),
        Students(age: 20, name: "Sarah Wilson", roll: 616),
        Students(age: 18, name: "David Lee", roll: 617),
        Students(age: 19, name: "Rachel Clark", roll: 618),
        Students(age: 20, name: "Daniel Lewis", roll: 619),
        Students(age: 21, name: "Olivia Walker", roll: 620),
        Students(age: 19, name: "James Hall", roll: 621),
        Students(age: 22, name: "Sophia Allen", roll: 622),
        Students(age: 21, name: "Benjamin Young", roll: 623),
        Students(age: 22, name: "Mia King", roll: 624),
        Students(age: 19, name: "Lucas Harris", roll: 625),
        Students(age: 20, name: "Ava Scott", roll: 626),
        Students(age: 21, name: "Liam Adams", roll: 627),
        Students(age: 22, name: "Isabella Thomas", roll: 628),
        Students(age: 19, name: "Ethan Moore", roll: 629),
        Students(age: 18, name: "Charlotte White", roll: 630),
        Students(age: 21, name: "William Martinez", roll: 631),
        Students(age: 20, name: "Emma Taylor", roll: 632),
        Students(age: 22, name: "Matthew Garcia", roll: 633),
        Students(age: 19, name: "Chloe Robinson", roll: 634),
        Students(age: 21, name: "Jack Perez", roll: 635),
        Students(age: 20, name: "Ella Carter", roll: 636),
        Students(age: 19, name: "Aiden Mitchell", roll: 637),
        Students(age: 22, name: "Grace Lee", roll: 638),
        Students(age: 21, name: "Jackson Harris", roll: 639),
        Students(age: 19, name: "Lily Clark", roll: 640)
    ]
    
    
    func Delete(index: IndexSet) { students.remove(atOffsets: index) }
    func Move(indexset: IndexSet, newIndex: Int) { students.move(fromOffsets: indexset, toOffset: newIndex)}
    
    func addStudent(name: String, roll: Int, age: Int) {
        let new_student = Students(age: age, name: name, roll: roll)
        students.append(new_student)
    }
    
}

struct Lecture_40_ViewModel: View {
    
    
    @State private var showAlert: Bool = false
    @State private var fruitName : String = ""
    
    @State private var model = StudentsViewModel()
    @State private var newStudentSheet = false
    
    
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    showStudentsInformation
                } header: {
                    studentsInformationHeader
                }

                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }

        }
        
        .sheet(isPresented: $newStudentSheet, content: {
            NewStudentAddingView()
                .presentationDetents([.height(600)])
        })
        
        .environment(model)
        
        
        
        
    }
    
    var showStudentsInformation: some View {
        ForEach(model.students, id: \.id) { student in
            HStack {
                VStack(alignment: .leading) {
                    Text(student.name)
                        .font(.headline)
                    Text("Age : \(student.age)")
                        .font(.subheadline)
                }
                Spacer()
                Text("\(student.roll)")
                
            }
            
        }
        .onDelete( perform: model.Delete )
        .onMove ( perform: model.Move )
    }
    
    var studentsInformationHeader: some View {
        HStack {
            Text("Student's Information")
                .font(.title2)
            Spacer()
            
            
            Button {
                newStudentSheet.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .tint(Color.green)
            }
            
            
        }
    }
    
}

struct NewStudentAddingView: View {

    @Environment(\.dismiss) var dismiss
    @Environment(StudentsViewModel.self) private var viewModel
    
    @State var name: String = ""
    @State var age: String = ""
    @State var roll: Int = 0
    
    @State private var showAlert: Bool = false
    @State private var error : error = .InvalidAge
    
    
    var body: some View {
        VStack(spacing: 30) {
            headerView
            
            nameField
            
            ageField
            
            rollField
            
            submitButton
            
        }
        .alert(isPresented: $showAlert, error: error) { error in
            
        } message: { error in
            
            if let reason = error.failureReason {
                Text(reason)
                
            } else {
                Text("Something went wrong, please try again later")
            }
            
            Button("Re-Submit", role: .none) {
                submitNewStudent()
            }
        }
        

        
    }
    
    
    var headerView: some View {
        VStack {
            HStack {
                Text("New Student")
                    .font(.headline)
                    .underline()
                Spacer()
            }
            .padding(.horizontal, 30)
        }
        
    }
    
    var nameField: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.2))
            .frame(width: 350, height: 60)
            .overlay {
                TextField("Student's Name", text: $name)
                    .padding()
            }
    }
    
    var ageField: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 350, height: 60)
                .overlay {
                    TextField("Student's Roll (within 15 to 30)", text: $age)
                        .keyboardType(.numberPad)
                        .padding()
                }
        }
    }
    
    var rollField: some View {
        HStack(spacing: 5) {
            Text("Roll")
                .font(.headline)
            
            Picker("Roll", selection: $roll) {
                ForEach(512..<644, id: \.self) { value in
                    Text("\(value)").tag(value)
                }
            }
            .pickerStyle(.wheel)
            
            
        }
        .padding(.horizontal, 30)
    }
    
    var submitButton: some View {
        
        Button {
            submitNewStudent()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.primary.opacity((name == "" || age == "" || roll == 0) ? 0.5 : 1))
                .frame(width: 300, height: 70)
                .overlay {
                    Text("Submit")
                        .font(.headline)
                }
                .foregroundStyle((name == "" || age == "" || roll == 0) ? Color.gray :  Color.white)
        }
        .disabled((name == "" || age == "" || roll == 0) ? true : false)
        .animation(.spring, value: (name == "" || age == "" || roll == 0))
        
    }
    
    private func submitNewStudent() {
        guard let number = Int(age) else {
            error = .InvalidAge
            showAlert = false
            Task {
                try await Task.sleep(for: .seconds(0.1))
                showAlert = true
            }
            return
        }
        
        if number < 15 || number > 30 {
            error = .outOfRange
            showAlert = false
            Task {
                try await Task.sleep(for: .seconds(0.1))
                showAlert = true
            }
            return
        }
        
        viewModel.addStudent(name: name, roll: roll, age: number)
        name = ""
        age = ""
        roll = 0
        dismiss()
        
        
    }
    
    
    
        
        
        
        
    
    
    
}



#Preview {
    Lecture_40_ViewModel()
    //NewStudentAddingView()
}
