//
//  Lecture 34 ContextMenu.swift
//  IOS Learning
//
//  Created by  Sadi on 01/01/2025.
//

import SwiftUI

struct Lecture_34_ContextMenu: View {
    var body: some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red)
                
                    .frame(width: 250, height: 400)
                    .overlay {
                        Text("Tap and Hold")
                    }
            }
            
            .contextMenu {
                Label("Work_1", systemImage: "house.fill")
                Label("work_2", systemImage: "flame.fill")
                Label("work_3", systemImage: "person.fill")
                    .font(.largeTitle)
            }
//            preview: {
//                Button("Preview") {
//                    print("Preview has been clicked")
//                }
//            }
            
        }
    }
}

#Preview {
    Lecture_34_ContextMenu()
}
