//
//  IOS_LearningApp.swift
//  IOS Learning
//
//  Created by  Sadi on 09/01/2025.
//

import SwiftUI
import SwiftData

@main
struct IOS_LearningApp: App {
    var body: some Scene {
        
        WindowGroup {
            StudentView()
        }
        .modelContainer(for: Student.self)
    }
}
