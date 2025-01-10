//
//  Lecture 9 Stacks.swift
//  IOS Learning
//
//  Created by  Sadi on 24/12/2024.
//

import SwiftUI

struct Lecture_9_Stacks: View {
    
    //// Vstacks -> vertical alignment
    /// Hstacks -> Horizontal alignment
    /// Zstacks -> z Index alignment
    
    var body: some View {
        
        VStack(alignment: .trailing, spacing: nil) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
                .frame(width: 200, height: 200)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 150, height: 150)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }

    }
}

#Preview {
    Lecture_9_Stacks()
}
