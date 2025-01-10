//
//  Lecture 18 Button.swift
//  IOS Learning
//
//  Created by  Sadi on 26/12/2024.
//

import SwiftUI

struct Lecture_18_Button: View {
    var body: some View {
        
        Button {
            // Action
        } label: {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black)
                .frame(width: 300, height: 50)
                .overlay(alignment: .center) {
                    Text("Rounded Rectangle Button")
                        .padding()
                }
                .foregroundStyle(Color.white)
        }

        
        
        
        
        Button("Button : Bordered") {
            
        }
        .buttonStyle(.bordered)
        
        Button("Button : Borderless") {
            
        }
        .buttonStyle(.borderless)
        
        Button("Button : Borderless Prominent") {
            
        }
        .buttonStyle(.borderedProminent)
        
        Button("Button : Plain") {
            
        }
        .buttonStyle(.plain)
        
        
    }
}

#Preview {
    Lecture_18_Button()
}
