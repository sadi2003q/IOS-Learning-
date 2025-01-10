//
//  Lecture 38 Unwrap.swift
//  IOS Learning
//
//  Created by  Sadi on 02/01/2025.
//

import SwiftUI

struct Lecture_38_Unwrap: View {
    
    @State private var Name: String? = nil
    
    @State private var username: String? = nil
    @State private var password: String? = nil
    
    @State private var isLoading: Bool = false

    var body: some View {
        VStack {
            
            Button("Download") {
                download_from_server()
            }
            .buttonStyle(BorderedProminentButtonStyle())
            
            
            if isLoading {
                ProgressView()
            }
            
            if let name = username {
                Text("Name : \(name)")
            } else {
                Text("No Name Found, Please Enter")
            }
            
            
            if let password = password {
                Text("Password : \(password)")
            } else {
                Text("No password Found, Please Enter")
            }
            
            
            
                
            
            //TextField("Enter Name", text: $username)
            
        }
    }
    
    private func download_from_server() {
        
//        guard let name = username else {
//            return
//        }
//        guard let pass = password else {
//            return
//        }
        
        isLoading = true
        Task {
            try await Task.sleep(for: .seconds(3))
            username = "Adnana Abdullah"
            password = "Sadi1234"
            
            isLoading = false
        }
        
        
        
        
    }
    
  
    

       
    
    
//  MARK: VIEW ONE
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text("Showing the Name : ")
//            if let name = Name {
//                Text("Name : \(name)")
//            } else {
//                Text("Name is not Found")
//            }
//            
//            
//        }
//    }
}

#Preview {
    Lecture_38_Unwrap()
}
