//
//  Lecture 26 Animation TImeline.swift
//  IOS Learning
//
//  Created by  Sadi on 30/12/2024.
//

import SwiftUI

struct Lecture_26_Animation_TImeline: View {
    
    @State private var startAnimation:Bool = false
    
    
    var body: some View {
        ZStack {
            Button("Press") {
                
            }
            
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: startAnimation ? 300 : 100, height: 100)
                .animation(.easeInOut, value: startAnimation)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: startAnimation ? 300 : 100, height: 100)
                .animation(.easeIn, value: startAnimation)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: startAnimation ? 300 : 100, height: 100)
                .animation(.easeOut, value: startAnimation)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: startAnimation ? 300 : 100, height: 100)
                .animation(.spring, value: startAnimation)
            
            
            
            
        }
    }
}

#Preview {
    Lecture_26_Animation_TImeline()
}
