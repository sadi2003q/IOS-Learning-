//
//  Lecture 08 Frame.swift
//  IOS Learning
//
//  Created by  Sadi on 24/12/2024.
//

import SwiftUI

struct Lecture_08_Frame: View {
    var body: some View {
        Text("Adnan Abdullah Sadi")
            .background(Color.green)
            .frame(width: 200, height: 200, alignment: .bottom)
            .frame(maxWidth: .infinity , alignment: .leading)
            .background(Color.red)
    }
}

#Preview {
    Lecture_08_Frame()
}
