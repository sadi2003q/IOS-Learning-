//
//  Lecture 52 SwiftData.swift
//  IOS Learning
//
//  Created by  Sadi on 10/01/2025.
//

import SwiftUI
import SwiftData

@Model
class Item : Identifiable {
    var id: UUID = UUID()
    var name: String
    
    
    init(name: String) {
        self.name = name
        
    }
}




struct Lecture_52_SwiftData: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State private var name: String = ""
    
    
    var body: some View {
        NavigationStack {
            TextField_UserName
            Button_SaveData
            List {
                ForEach(items) { item in
                    Text(item.name)
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button("Update") {
                                UpdateItem(item: item)
                            }
                            .tint(.green)
                            
                            
                            Button(role: .destructive) {
                                if let index = items.firstIndex(where: { $0.id == item.id }) {
                                    DeleteItem(indexSet: IndexSet(integer: index))
                                }
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
                //.onDelete (perform: DeleteItem)
            }
            .listStyle(.plain)
        }
    }
    
    private var TextField_UserName : some View {
        TextField("Name", text: $name)
            .submitLabel(.go)
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
            .autocapitalization(.none) // Prevent autocapitalization
            .disableAutocorrection(true)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue.opacity(0.7), lineWidth: 1)
            )
            .padding(.horizontal)
    }
    
    private var Button_SaveData: some View {
        Button("Save Data") {
            SaveData(name: name)
            name = ""
        }
        .buttonStyle(.borderedProminent)
    }
    
    private func SaveData( name: String) {
        if name == "" { return }
        withAnimation(.easeIn) {
            modelContext.insert(Item(name: name))
        }
        
    }
    
    private func DeleteItem(indexSet: IndexSet) {
        for index in indexSet {
            let itemToDelete = items[index]
            modelContext.delete(itemToDelete)
        }
    }
    
    
    private func UpdateItem(item: Item) {
        item.name = "Updated Name"
    }
    
    
    
}

#Preview {
    Lecture_52_SwiftData()
        .modelContainer(for: Item.self)
}
