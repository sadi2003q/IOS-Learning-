//
//  Lecture 51 ViewThatFIt.swift
//  IOS Learning
//
//  Created by  Sadi on 08/01/2025.
//

import SwiftUI

struct Lecture_51_ViewThatFIt: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.black)
            .frame(width: 300, height: 400)
            .overlay {
                ViewThatFits {
                    Text("""
                    Sentence 1 ViewThatFits is a container in SwiftUI designed to display the first child view 
                    that fits within the available space. It evaluates the size of each child view in 
                    the order they are declared. Only the first view that fits is displayed, and 
                    subsequent views are ignored. This helps in building responsive layouts that adapt 
                    to different screen sizes or constraints. It simplifies layout logic by removing 
                    the need for manual checks or calculations.
                    """)

                    Text("""
                    Sentence 2 ViewThatFits is used for responsive designs in SwiftUI. It shows the first child 
                    view that fits in the given space. This behavior ensures efficient use of the 
                    screen. It's a great tool for adaptive layouts.
                    """)

                    Text("""
                    Sentence 3 ViewThatFits evaluates child views in order. It picks the first one that fits 
                    within the available space. This is perfect for handling constrained layouts.
                    """)

                    Text("""
                    Sentence 4 ViewThatFits simplifies responsive design. It shows the first view that fits.
                    """)
                }
                .foregroundStyle(.white)
            }
            
    }
}

#Preview {
    Lecture_51_ViewThatFIt()
}
