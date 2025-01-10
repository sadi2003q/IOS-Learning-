//
//  Lecture 30 NavigationStack.swift
//  IOS Learning
//
//  Created by  Sadi on 31/12/2024.
//

import SwiftUI

struct Lecture_30_NavigationStack: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Grapes", "Strawberry", "Watermelon", "Pineapple", "Peach", "Plum", "Cherry"]
    @State private var showEdit = false
    
    
    var body: some View {
        NavigationStack {
            ForEach(fruits, id: \.self) { fruit in
                NavigationLink(value: fruit) {
                    Text(fruit)
                        .font(.title)
                        .fontWeight(.bold)
                }
//                MARK: WHEN I DON'T HAVE ANY VARIABLE TO PASS ON
//                NavigationLink(destination: EmptyView()) {
//                    Text("Empty View")
//                }
                
                
            }
            .navigationDestination(for: String.self) { value in
                practiceView(fruitName: value)
            }
            .navigationTitle("Fruits") // 1. navigationTitle
            .navigationBarTitleDisplayMode(.automatic) // 2. navigationBarTitleDisplayMode(large, inline)
            .toolbar { // 3. toolbar
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { showEdit.toggle() }) {
                        Text("Edit")
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { showEdit.toggle() }) {
                        Text("Add")
                    }
                }
            }
            
            .navigationBarHidden(false) // 5. navigationBarHidden
            .foregroundStyle(.red) // 7. foregroundStyle
            .accentColor(.white) // 8. accentColor
        }

    }
}


struct practiceView: View {
    
    let fruitName: String
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            Text(fruitName)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            
        }
        
    }
}



#Preview {
    Lecture_30_NavigationStack()
}
