//
//  Lecture 19 Extracting Function.swift
//  IOS Learning
//
//  Created by  Sadi on 26/12/2024.
//

import SwiftUI

struct Lecture_19_Extracting_Function: View {
    var body: some View {
        Rectangle
    }
    
    
    var Rectangle: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 100, height: 100)
            .overlay(alignment: .center) {
                Text("Hello I'm a Button")
            }
    }
    
}

#Preview {
    Lecture_19_Extracting_Function()
}
