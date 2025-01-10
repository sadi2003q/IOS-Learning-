//
//  Lecture 5 Icon.swift
//  IOS Learning
//
//  Created by  Sadi on 24/12/2024.
//

import SwiftUI

struct Lecture_5_Icon: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.font(.largeTitle)
            .font(.system(size: 24))
            .foregroundStyle(Color.red)
            .frame(width: 300, height: 300)
            .clipped()
    }
}

#Preview {
    Lecture_5_Icon()
}
