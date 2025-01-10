//
//  Lecture 24 Ternary Operator.swift
//  IOS Learning
//
//  Created by  Sadi on 27/12/2024.
//

import SwiftUI

struct Lecture_24_Ternary_Operator: View {
    @State var backgroundColor: Color = .red
    @State var changeColor: Bool = false
    
    
    
    var body: some View {
        ZStack {
           
            backgroundColor.ignoresSafeArea()
            
            Button {
                changeColor.toggle()
                backgroundColor = changeColor ? .blue : .red //this line is the ternary operator
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
    
}

#Preview {
    Lecture_24_Ternary_Operator()
}
