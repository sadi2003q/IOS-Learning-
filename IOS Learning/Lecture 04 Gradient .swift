//
//  Lecture 4 Gradient .swift
//  IOS Learning
//
//  Created by  Sadi on 19/12/2024.
//

import SwiftUI

struct Lecture_4_Gradient_: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(
//                    colors: [.red, .blue],
//                    startPoint: .topLeading,
//                    endPoint: .trailing
//                )
                
//                RadialGradient(
//                    colors: [.red, .green],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                
//                AngularGradient(
//                    colors: [.red, .green],
//                    center: .center,
//                    startAngle: .degrees(4.0),
//                    endAngle: .degrees(45.0)
//                )
                AngularGradient(
                    colors: [.red, .green],
                    center: .center,
                    angle: .degrees(180+45)
                )
                
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    Lecture_4_Gradient_()
}
