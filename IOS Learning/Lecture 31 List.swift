//
//  Lecture 31 List.swift
//  IOS Learning
//
//  Created by  Sadi on 31/12/2024.
//

import SwiftUI

struct Lecture_31_List: View {
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Grapes", "Strawberry", "Watermelon", "Pineapple", "Peach", "Plum", "Cherry"]
    
    
    var body: some View {
        
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id:\.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: onDelete)
                    .onMove (perform: onMove) //Moving is not working
                    
                    
                    
                    
                } header: {
                    HStack {
                        Text("Fruits")
                            .fontWeight(.bold)
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                }

            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton() // Toggles edit mode
                }
            }
            .listStyle(PlainListStyle()) /// there are some list style but default is the most used style
            .listRowBackground(Color.pink) ///this line of code is also not working
        }
        
    }
    
    
    
    private func onDelete(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    

    
    private func onMove(_ indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    Lecture_31_List()
}
