//
//  Lecture 41 AppStorage.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

struct Lecture_41_AppStorage: View {
    @AppStorage("Student_Name") private var Student_Name: String?
    @AppStorage("Student_Gender") private var Student_Gender: String?

    @State private var isSheetPresented: Bool = false
    @State private var temporaryName: String = ""
    @State private var temporaryGender: String = "Male"

    var body: some View {
        VStack(spacing: 20) {
            StudentInformation

            Button_AddNewStudent

            
        }
        .sheet(isPresented: $isSheetPresented) {
            AddStudentInformationSheet
        }
    }

    private var StudentInformation: some View {
        Group {
            if let name = Student_Name,
               let gender = Student_Gender {
                Text("Information Found")
                    .fontWeight(.semibold)
                    .font(.title)
                    .underline()
                Text("Name: \(name)")
                Text("Gender: \(gender)")
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 200)
                    .overlay {
                        Text("No student found!")
                            .foregroundStyle(.white)
                    }
            }
        }
    
    }

    private var Button_AddNewStudent: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.primary)
            .frame(width: 300, height: 70)
            .overlay {
                Text("Add")
                    .font(.headline)
                    .foregroundStyle(Color.white)
            }
            .onTapGesture {
                isSheetPresented = true
            }
    }

    private var AddStudentInformationSheet: some View {
        NavigationView {
            Form {
                Section(header: Text("Student Name")) {
                    TextField("Enter name", text: $temporaryName)
                        .autocapitalization(.words)
                }

                Section(header: Text("Student Gender")) {
                    Picker("Select gender", selection: $temporaryGender) {
                        Text("Male").tag("Male")
                        Text("Female").tag("Female")
                        Text("Other").tag("Other")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("Add Information")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        Student_Name = temporaryName
                        Student_Gender = temporaryGender
                        isSheetPresented = false
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isSheetPresented = false
                    }
                }
            }
        }
    }
}

#Preview {
    Lecture_41_AppStorage()
}
