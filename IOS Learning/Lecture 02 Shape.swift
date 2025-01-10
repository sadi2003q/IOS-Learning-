//
//  Lecture 02 Shape.swift
//  IOS Learning
//
//  Created by  Sadi on 19/12/2024.
//

import SwiftUI

struct Lecture_02_Shape: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray)
            .frame(width: 300, height: 200)
            .border(.background)
            .shadow(color: .gray, radius: 15, x: 0, y: 5)
            

    }
}

#Preview {
    Lecture_02_Shape()
}
