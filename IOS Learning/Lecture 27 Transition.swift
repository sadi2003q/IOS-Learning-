//
//  Lecture 27 Transition.swift
//  IOS Learning
//
//  Created by  Sadi on 30/12/2024.
//

import SwiftUI

/// Transition doesn't work when .animation(AnyAnimation, value) modifier is added with a view
/// must add animation with the state variable to make it work

struct Lecture_27_Transition: View {
    
    @State private var showView = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("Show View") {
                    
                    withAnimation(.spring()) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .frame(height: 400)
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)))
                    .transition(AnyTransition.opacity)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    Lecture_27_Transition()
}
