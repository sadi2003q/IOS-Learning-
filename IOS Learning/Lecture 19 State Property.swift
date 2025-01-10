//
//  Lecture 19 State Property.swift
//  IOS Learning
//
//  Created by  Sadi on 26/12/2024.
//

import SwiftUI

struct Lecture_19_State_Property: View {
    
    @State var backgroundColor: Color = .red;
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            Grid(verticalSpacing: 20) {
                GridRow {
                    
                    Button {
                        changeColor()
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                            .frame(width: 150, height: 150)
                            .overlay(alignment: .center) {
                                Text("Orange")
                                    .foregroundStyle(Color.white)
                            }
                    }

                    
                    
                    Button {
                        changeColor()
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                            .frame(width: 150, height: 150)
                            .overlay(alignment: .center) {
                                Text("Red")
                                    .foregroundStyle(Color.white)
                            }
                    }
                        
                }
                
                GridRow {
                    Text("Count : \(count)")
                        .foregroundStyle(Color.white)
                        .gridCellColumns(2)
                }
                
                
                GridRow {
                    
                    Button {
                        countIncrease()
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                            .frame(width: 150, height: 150)
                            .overlay(alignment: .center) {
                                Text("++")
                                    .foregroundStyle(Color.white)
                            }
                    }

                    
                    
                    Button {
                        countDecrease()
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                            .frame(width: 150, height: 150)
                            .overlay(alignment: .center) {
                                Text("--")
                                    .foregroundStyle(Color.white)
                            }
                    }
                        
                }
            }
            
            
        }
    }
    private func changeColor() {
        if backgroundColor == .red {
            backgroundColor = .blue
        } else {
            backgroundColor = .red
        }
    }
    
    private func countIncrease() {
        count+=1
    }
    
    private func countDecrease() {
        count-=1
    }
}

#Preview {
    Lecture_19_State_Property()
}
