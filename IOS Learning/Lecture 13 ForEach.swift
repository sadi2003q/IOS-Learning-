//
//  Lecture 13 ForEach.swift
//  IOS Learning
//
//  Created by  Sadi on 25/12/2024.
//

import SwiftUI

struct Lecture_13_ForEach: View {
    
    let fruits : [String] = ["Apple", "Banana", "Orange", "Grapes"]
    
    
    var body: some View {
        VStack {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
            
            ForEach(0..<6) { index in
                Text("Index --> \(index)")
            }
            
            
            
        }
    }
}

#Preview {
    Lecture_13_ForEach()
}
