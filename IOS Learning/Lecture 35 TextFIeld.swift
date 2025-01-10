//
//  Lecture 35 TextFIeld.swift
//  IOS Learning
//
//  Created by  Sadi on 01/01/2025.
//

import SwiftUI

struct Lecture_35_TextFIeld: View {
    
    @State private var username = ""
    @State private var password = ""
    
    @State private var showAlert = false
    @State private var current_state: login_state = .networkError
    
    var body: some View {
        VStack {
            UserName_Field
            Password_Field
            Button_login
                
            
        }
        .alert(isPresented: $showAlert,
               error: current_state) { state in
            
            alertButtons(for: state)
            
        }
                message: { state in
                Text(state.failureReason ?? "Something went wrongm try again later")
            }

       
            
            
            
        

        
    }
    
    
    var UserName_Field: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.2))
            .frame(width: 350, height: 60)
            .overlay {
                TextField("Username", text: $username)
                    .padding()
            }
    }
    
    var Password_Field: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.2))
            .frame(width: 350, height: 60)
            .overlay {
                TextField("Password", text: $password)
                    .padding()
            }
    }
    
    var Button_login: some View {
        Button {
            confirmLogin()
            
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 350, height: 60)
                .overlay {
                    Text("Login")
                        .foregroundStyle(Color.white)
                }
                .padding(.top, 20)
        }
    }
    
    private func alertButtons(for state: login_state) -> some View {
        Group {
            switch state {
            case .success:
                Button("OK", role: .none) {
                    showAlert.toggle()
                }
            case .invalidPassword:
                TextField("Password", text: $password)
                Button("Cancel", role: .destructive) {
                    showAlert.toggle()
                }
                Button("Retry", role: .none) {
                    showAlert.toggle()
                    confirmLogin()
                }
            case .invalidUserName:
                TextField("Username", text: $username)
                Button("Retry", role: .none) {
                    showAlert.toggle()
                    confirmLogin()
                }
                Button("Cancel", role: .destructive) {
                    showAlert.toggle()
                }
            case .networkError:
                Button("Retry", role: .none) {
                    confirmLogin()
                }
                Button("Cancel", role: .destructive) {
                    showAlert.toggle()
                }
            }
        }
    }
    
    
    private func confirmLogin() {
        
        if username == "Adnan" && password == "Sadi" {
            current_state = .success
            
            
        } else {
            if username == "Adnan" { current_state = .invalidPassword }
            else if password == "Sadi" { current_state = .invalidUserName }
            else { current_state = .networkError }
            
            
        }
        showAlert = false
        Task {
            try await Task.sleep(for: .seconds(1))
            showAlert = true
        }
         
    }
    
    

    
}


enum login_state: LocalizedError {
    case invalidUserName
    case invalidPassword
    case networkError
    case success
    
    var errorDescription: String? {
        switch self {
        case .invalidUserName:
            return "Invalid User Name"
        case .invalidPassword:
            return "Invalid Password"
        case .networkError:
            return "Network Error"
        case .success:
            return "Login Successful"
        }
    
    }
    
    var failureReason: String? {
        switch self {
        case .invalidUserName:
            "Check your username and try again"
        case .invalidPassword:
            "confirm your password and try again"
        case .networkError:
            "no network connection, connect to wifi or cellular and try again"
        case .success:
            "Welcome to the Dashboard"
        }
    }
}



#Preview {
    Lecture_35_TextFIeld()
}
