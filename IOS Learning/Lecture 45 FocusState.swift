//
//  Lecture 45 FocusState.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI


/// This is for the focus of all the TextField within the view
/// .focused($variable name, equals: .casees)
///
enum onboardField : Hashable{
    case username
    case password
}


struct Lecture_45_FocusState: View {
    
    @FocusState private var focus_TextField: onboardField?
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    
    
    var body: some View {
        VStack {
            
            TextField_UserName
            TextField_Password
            
            Button_Submit
            
        }
        
        
        
    }
    
    private var TextField_UserName : some View {
        TextField("Username", text: $userName)
            .focused($focus_TextField, equals: .username)
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
            .autocapitalization(.none) // Prevent autocapitalization
            .disableAutocorrection(true)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue.opacity(0.7), lineWidth: 1)
            )
            .padding(.horizontal)
    }
    
    private var TextField_Password : some View {
        TextField("Password", text: $password)
            .focused($focus_TextField, equals: .password)
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue.opacity(0.7), lineWidth: 1)
            )
            .padding(.horizontal)
    }
    
    private var Button_Submit : some View {
        
        Button {
            focusMode_TextField_UsernamePassword()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.purple)
                .frame(width: 300, height: 70)
                .overlay {
                    Text("Submit")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
        }
    }
    
    private func focusMode_TextField_UsernamePassword() {
        if userName.isEmpty {
            focus_TextField = .username
        } else {
            focus_TextField = .password
        }
    }
}

#Preview {
    Lecture_45_FocusState()
}
