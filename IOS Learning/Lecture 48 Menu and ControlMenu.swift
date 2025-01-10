//
//  Lecture 48 Menu.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

struct Lecture_48_Menu: View {
    
    var body: some View {
        VStack {
            
            //Menu_SimpleMenu
            
            ControlGroup_SimpleGroup_5
        }
    }
    
    private var Menu_SimpleMenu: some View {
        Group {
            Menu {
                Button("Go To Home") {
                    
                }
                
                Button("Go To About") {
                    
                }
                
                Button("Go To Contact") {
                    
                }
            } label: {
                Text("Tap Me")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: 200)
                    .background(
                        LinearGradient(
                            colors: [.blue, .purple],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.45), radius: 10, x: 5, y: 5)
            }
        }
    }
    
    private var ControlGroup_SimpleGroup_1: some View {
        Menu("Control Group") {
            ControlGroup("Control Group") {
                Button("Go To Home") {
                    
                }
                
                Button("Go To About") {
                    
                }
                
                Button("Go To Contact") {
                    
                }
            }
        }
    }
    
    private var ControlGroup_SimpleGroup_2: some View {
        Menu("Part 1") {
            ControlGroup("Control Group") {
                Button("Go To Home") {
                    
                }
                
                Button("Go To About") {
                    
                }
                
                Button("Go To Contact") {
                    
                }
            }
            
            ControlGroup("Control Group") {
                Button("Go To Home") {
                    
                }
                
                Button("Go To About") {
                    
                }
                
                Button("Go To Contact") {
                    
                }
            }
            
            
        }
    }
    
    private var ControlGroup_SimpleGroup_3: some View {
        Group {
            Menu("Part3") {
                Button("Button 1 ") {}
                Button ("Button 2") {}
                
                ControlGroup("Control Group") {
                    Button("Button 3") {}
                    Button ("Button 4") {}
                    Button("Button 5") {}
                }
            }
        }
    }
    
    private var ControlGroup_SimpleGroup_4: some View {
        Group {
            Menu("Part 4") {
                Button("Button 1 ") {}
                Button ("Button 2") {}
                
                ControlGroup("Control Group") {
                    Button("Button 3") {}
                    Button ("Button 4") {}
                    Menu("Part3") {
                        Button("Button 1 ") {}
                        Button ("Button 2") {}
                        
                        ControlGroup("Control Group") {
                            Button("Button 3") {}
                            Button ("Button 4") {}
                            Button("Button 5") {}
                        }
                    }
                }
            }
        }
    }
    
    private var ControlGroup_SimpleGroup_5: some View {
        Group {
            Menu("Part 5") {
                Button("Button 1 ") {}
                
                ControlGroup("Control Group") {
                    Button("Button 3") {}
                    Button ("Button 4") {}
                    Menu("Part3") {
                        Button("Button 1 ") {}
                        Button ("Button 2") {}
                        
                        ControlGroup("Control Group") {
                            Button("Button 3") {}
                            Button ("Button 4") {}
                            Button("Button 5") {}
                        }
                    }
                }
                
                Button ("Button 2") {}
                
                
            }
        }
    }
    
}

#Preview {
    Lecture_48_Menu()
}
