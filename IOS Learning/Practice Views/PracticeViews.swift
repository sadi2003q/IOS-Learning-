//
//  PracticeViews.swift
//  IOS Learning
//
//  Created by  Sadi on 09/01/2025.
//

import SwiftUI

struct PracticeViews: View {
    
    @State private var fruits: [String] = ["Apple", "Banana", "Orange", "Grapes", "Strawberry", "Watermelon", "Pineapple", "Peach", "Plum", "Cherry", "Blueberry", "Kiwi", "Pomegranate", "Peach", "Plum", "Cherry", "Blueberry", "Kiwi", "Pomegranate"]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button(role: .destructive) {
                                onDelete(fruit: fruit)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            
                            Button("Perform") {
                                // Action for "Perform" button
                                print("\(fruit) - Perform button tapped")
                            }
                            .tint(.blue) // Set a custom color for the "Perform" button
                        }
                    
                }
                //                .onDelete { indexSet in
                //                    fruits.remove(atOffsets: indexSet)
                //                }
                .onMove { indexSet, newOffset in
                    fruits.move(fromOffsets: indexSet, toOffset: newOffset)
                }
                
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
    
    private func onDelete( fruit: String) {
        guard let index = fruits.firstIndex(of: fruit)  else {
            return
        }
        self.fruits.remove(at: index)
    }
    
}

#Preview {
    PracticeViews()
}
