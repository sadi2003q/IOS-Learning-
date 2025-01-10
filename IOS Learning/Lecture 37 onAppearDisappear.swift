//
//  Lecture 37 onAppearDisappear.swift
//  IOS Learning
//
//  Created by  Sadi on 02/01/2025.
//

import SwiftUI

struct Lecture_37_onAppearDisappear: View {
    
    @State private var appearance : Bool = false
    
    @State private var onAppeared: String = "Nthing"
    
    
    var body: some View {
        VStack {
            
            Button("Press") {
                withAnimation(.easeInOut) { appearance.toggle() }
            }
            .buttonStyle(BorderedProminentButtonStyle())
            
            Text(onAppeared)
            
            Spacer()
            if appearance {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .frame(height: 400)
                    .transition(AnyTransition.opacity)
                    .onAppear {
                        onAppeared = "Appeared"
                    }
                    .onDisappear {
                        onAppeared = "Disappeared"
                    }
            }
            
        }
    }
}

#Preview {
    Lecture_37_onAppearDisappear()
}
