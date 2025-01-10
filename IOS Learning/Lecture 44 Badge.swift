//
//  Lecture 44 Badge.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

struct Lecture_44_Badge: View {
    var body: some View {
        TabView {
            // First Tab with a badge
            Text("Home Screen")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .badge(5) // Badge with a numeric value
            
            // Second Tab with a badge
            Text("Messages Screen")
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
                .badge("New") // Badge with a string
            
            // Third Tab without a badge
            Text("Settings Screen")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
                .badge(0) // wont show anything
        }
    }
}

#Preview {
    Lecture_44_Badge()
}
