//
//  Lecture 49 PopOver.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

struct Lecture_49_PopOver: View {
    
    @State private var showPopOver: Bool = false
    
    
    var body: some View {
        
        VStack {
            Button_PopOver
            
        }
//        .popover(isPresented: $showPopOver) {
//            View_PopOver
//                .presentationCompactAdaptation(.popover)
//        }
        
        
        .popover(isPresented: $showPopOver, attachmentAnchor: .point(.trailing)) {
            View_PopOver
                .presentationCompactAdaptation(.popover)
        }
        
    }
    
    private var Button_PopOver: some View {
        Button {
            showPopOver.toggle()
        } label: {
            Text("Pop Over")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: 200)
                .background(
                    LinearGradient(
                        colors: [.blue, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.45), radius: 10, x: 5, y: 5)
        }
    }
    
    private var View_PopOver: some View {
        VStack(spacing: 15) {
            Text("Hello, World!")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding()
            
            Text("This is a basic but beautiful popover view.")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            
            Button("Close") {
                showPopOver.toggle()
            }
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.red.opacity(0.9))
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .frame(width: 300)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 5, y: 5)
    }
    
    
}

#Preview {
    Lecture_49_PopOver()
}
