//
//  Lecture 32 Alert.swift
//  IOS Learning
//
//  Created by  Sadi on 01/01/2025.
//

import SwiftUI


enum customError: LocalizedError {
    case invalidUsername
    case invalidPassword
    case noNetworkConnection
    
    var  errorDescription: String? {
        switch self {
        case .invalidUsername:
            return "Invalid Username"
        case .invalidPassword:
            return "Invalid Password"
        case .noNetworkConnection:
            return "No Network Connection"
        }
    }
    
    
    var failureReason: String? {
        switch self {
            case .invalidUsername:
                "Username is invalid, check the username and try again"
            case .invalidPassword:
                "Password is invalid, make sure the password is correct"
            case .noNetworkConnection:
                "No Network Connection, connect to Wi-Fi or cellular and try again"
        }
    }
}







struct Lecture_32_Alert: View {
    
    @State private var showAlert = false

    @State private var name: String = ""
    
    @State private var error: customError = .noNetworkConnection
    
    
    var body: some View {
        VStack { // custom error
            Button("Alert 1") {
                error = .invalidPassword
                showAlert.toggle()
            }
            
            
            
            Button("Alert 2") {
                error = .invalidUsername
                showAlert.toggle()
            }
            
        }
        .alert(isPresented: $showAlert, error: error) { error in
            
        } message: { error in
            Text(error.failureReason ?? "Something went wrong, Try again" )
        }

        
        
        
        
        
        
//        MARK: ALERT WITH TEXTFIELD
//        .alert("Network Error", isPresented: $showAlert) {
//            TextField("Enter your name", text: $name)
//            Button("Ok", role: .none) {
//                name = ""
//            }
//            
//            Button("Cancel", role: .cancel) {
//                
//            }
//        } message: {
//            Text("Type a new name and try again")
//        }

//        MARK: BASIC ALERT
//        .alert("Error", isPresented: $showAlert) {
//            Button("Cancel", role: .cancel) {
//                showAlert.toggle()
//            }
//            
//            Button("Ok", role: .destructive) {
//                showAlert.toggle()
//            }
//            
//        } message: {
//            Text("Try Again a few moment later")
//        }

    }
}






#Preview {
    Lecture_32_Alert()
}
