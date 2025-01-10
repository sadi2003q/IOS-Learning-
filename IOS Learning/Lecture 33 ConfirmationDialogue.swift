//
//  Lecture 33 ActionSheet.swift
//  IOS Learning
//
//  Created by  Sadi on 01/01/2025.
//

import SwiftUI

struct Lecture_33_ActionSheet: View {
    
    @State private var showActionSheet = false
    
    
    var body: some View {
        ZStack {
            Button("Show Action") {
                showActionSheet.toggle()
            }
            .buttonStyle(BorderedButtonStyle())
            .confirmationDialog( "Downloading File", isPresented: $showActionSheet, titleVisibility: .visible) {
                Button("Yes, I agree", role: .none) {
                    
                }
                Button("No, I disagree", role: .destructive) {
                    
                }
                
            
            } message: {
                
                Text("By confirming this you will agree with our terms")
            }
            

        }
    }
}

#Preview {
    Lecture_33_ActionSheet()
}
