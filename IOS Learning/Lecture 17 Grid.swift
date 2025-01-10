//
//  Lecture 17 Grid.swift
//  IOS Learning
//
//  Created by Sadi on 26/12/2024.
//

import SwiftUI

struct Lecture_17_Grid: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 10, verticalSpacing: 10) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { colIndex in
                        let gridIndex = rowIndex * 4 + colIndex + 1
                        
                        if gridIndex == 7 {
                            EmptyView()
                        } else {
                            gridItem(number: gridIndex)
                                .gridCellColumns(gridIndex == 6 ? 2 : 1)
                                .gridCellAnchor(.leading)
                        }
                    }
                }
            }
        }
    }
    
    private func gridItem(number: Int) -> some View {
        Text("\(number)")
            .padding(20)
            .font(.largeTitle)
            .foregroundStyle(Color.white)
            .frame(height: 80)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    Lecture_17_Grid()
}
