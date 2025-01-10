//
//  Lecture 22 Binding.swift
//  IOS Learning
//
//  Created by  Sadi on 27/12/2024.
//

import SwiftUI

struct Lecture_22_Binding: View {
    
    @State private var backgroundColor: Color = .red
    @State private var text: String = "Count Now"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            RectangularButton(backgroundColor: $backgroundColor)
            
        }
    }
}


//MARK: VIEW 1
//struct RectangularView: View {
//    
//    @Binding var backgroundColor: Color
//    @Binding var text: String
//    
//    
//    var body: some View {
//        RoundedRectangle(cornerRadius: 20)
//            .fill(backgroundColor)
//            .frame(width: 150, height: 150)
//            .overlay {
//                Text(text)
//            }
//    }
//}

struct RectangularButton: View {
    
    @Binding var backgroundColor: Color
    
    var body : some View {
        Button("This is a Code") {
            if backgroundColor == .red {
                backgroundColor = .purple
            } else {
                backgroundColor = .red
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    Lecture_22_Binding()
}
