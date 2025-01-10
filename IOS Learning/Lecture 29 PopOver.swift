//
//  Lecture 29 PopOver.swift
//  IOS Learning
//
//  Created by  Sadi on 31/12/2024.
//

import SwiftUI

struct Lecture_29_PopOver: View {
    
    @State private var popOver: Bool = false
    
    
    var body: some View {
        ZStack {
            Button("Show PopOver") {
                withAnimation(.spring()) {
                    popOver.toggle()
                }
                
            }
            .buttonStyle(BorderedProminentButtonStyle())
            
            
            if popOver {
//                PopOverView()
                
                PopOverView2(popOver: $popOver)
                    .transition(AsymmetricTransition(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .bottom)))
                    .padding(.top, 100)
            }
        }
        .ignoresSafeArea()
        //        .sheet(isPresented: $popOver) {
        //            PopOverView()
        //        }
    }
    
    
    
    
}

struct PopOverView: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            
            Circle()
                .fill(Color.white)
                .frame(width: 250)
                .shadow(radius: 10)
                .overlay {
                    Text("Close Screen")
                        .font(.title)
                }
                .onTapGesture {
                    dismiss()
                }
            
        }
    }
}

struct PopOverView2: View {
    
    @Binding var popOver: Bool
    
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            
            Circle()
                .fill(Color.white)
                .frame(width: 250)
                .shadow(radius: 10)
                .overlay {
                    Text("Close Screen")
                        .font(.title)
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        popOver.toggle()
                    }
                    
                }
            
        }
        .ignoresSafeArea()
    }
}


#Preview {
    Lecture_29_PopOver()
}
