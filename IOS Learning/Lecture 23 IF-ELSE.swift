//
//  Lecture 23  IF-ELSE.swift
//  IOS Learning
//
//  Created by  Sadi on 27/12/2024.
//

import SwiftUI

struct Lecture_23__IF_ELSE: View {
    
    @State var backgroundColor: Color = .red
    @State var changeColor: Bool = false
    
    
    
    var body: some View {
        ZStack {
           
            backgroundColor.ignoresSafeArea()
            
            Button {
                changeBackgroundColor()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 100, height: 100)
                    .foregroundStyle(Color.black)
                    .overlay {
                        Text("Color Change")
                    }
            }

            
        }
    }
    
    private func changeBackgroundColor() {
        changeColor.toggle()
        if changeColor {
            backgroundColor = .blue
        } else {
            backgroundColor = .red
        }
    }
    
}

#Preview {
    Lecture_23__IF_ELSE()
}
