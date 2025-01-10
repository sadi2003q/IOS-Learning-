//
//  Lecture 15 Grid.swift
//  IOS Learning
//
//  Created by  Sadi on 25/12/2024.
//

import SwiftUI

struct Lecture_15_Grid: View {
    
    let columns : [GridItem] = [
        GridItem(.fixed(50), spacing: 70, alignment: nil),
        GridItem(.fixed(50), spacing: 70, alignment: nil),
        GridItem(.fixed(50), spacing: 70, alignment: nil)
        
        
    ]
    var body: some View {
        ScrollView {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(width: 400, height: 400)
                .shadow(color: Color.gray, radius: 10, x: 3, y: 10)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 20, pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                    .padding()
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<40) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green)
                            .frame(width: 100, height: 100)
                        
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .padding()
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<40) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.red)
                            .frame(width: 100, height: 100)
                        
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    Lecture_15_Grid()
}
