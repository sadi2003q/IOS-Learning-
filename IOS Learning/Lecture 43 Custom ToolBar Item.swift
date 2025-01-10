//
//  Lecture 43 Custom ToolBar Item.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

struct Lecture_43_Custom_ToolBar_Item: View {
    
    @State private var fruits: [String] = ["Apple", "Banana", "Orange", "Grapes", "Watermelon", "Strawberry", "Pineapple", "Peach", "Plum", "Cherry", "Blueberry", "Kiwi", "Pomegranate", "Peach", "Plum", "Cherry", "Blueberry", "Kiwi", "Pomegranate"]
    
    
    var body: some View {
        NavigationStack {
            
            List(fruits, id: \.self) { fruit in
                Text(fruit)
            }
            .toolbar {
                
                /// topbar leading -> top left corner
                /// topbar trailing -> top right corner
                /// .principle -> top middle corner
                /// .keyboard -> Extra button over keyboard
                /// to add on bottom left and right corner use .frame(alignment : ) modfier
                
                ToolbarItem(placement: .principal) {
                    Image(systemName: "flame.fill")
                }
            }
            .toolbarVisibility(.automatic)
            ///.toolbarVisibility(visibility , for: ) -> this is for visibility option in different position
            ///simler modifiers are
            .toolbarBackgroundVisibility(.automatic, for: .tabBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(Color.red)
            
        }
    }
}

#Preview {
    Lecture_43_Custom_ToolBar_Item()
}
