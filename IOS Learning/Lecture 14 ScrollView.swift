//
//  Lecture 14 ScrollView.swift
//  IOS Learning
//
//  Created by  Sadi on 25/12/2024.
//

import SwiftUI

struct Lecture_14_ScrollView: View {
//    var body: some View {
//        ScrollView(.vertical) {
//            LazyVStack {
//                ForEach(0..<100) {
//                    Text("\($0)")
//                        .font(.largeTitle)
//                        .padding()
//                }
//            }
//        }
//    }
    
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHStack {
//                ForEach(0..<100) {
//                    Text("\($0)")
//                        .font(.largeTitle)
//                        .padding()
//                }
//            }
//        }
//    }
    
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0..<100) {_ in
                    Circle()
                        .frame(width: 100, height: 100)
                        .containerRelativeFrame(
                            .horizontal,
                            count: 4,
                            spacing: 1)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.3)
                                .scaleEffect(
                                    x: phase.isIdentity ? 1 : 0.3,
                                    y: phase.isIdentity ? 1 : 0.3
                                )
                                .offset(y: phase.isIdentity ? 0 : 50)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(16, for: .scrollIndicators)
        .scrollTargetBehavior(.viewAligned )
        
        
    }
    
    
}

#Preview {
    Lecture_14_ScrollView()
}
