//
//  Lecture 08 BackGorund and Overlay.swift
//  IOS Learning
//
//  Created by  Sadi on 24/12/2024.
//

import SwiftUI

struct Lecture_08_Background_and_Overlay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                
//                //Color.yellow
//                Circle()
//                    .fill(Color.yellow)
//                    .frame(width: 200, height: 200)
//                
//            )
//            .background(
//                Circle()
//                    .fill(Color.pink)
//                    .frame(width: 220, height: 220)
//            )
        
        
//        Rectangle()
//            .frame(width: 150, height: 150)
//            
//            .overlay (
//                Rectangle()
//                    
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100),
//                alignment: .topLeading
//            )
//            .background(
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 200, height: 200)
//                    .foregroundColor(Color.blue)
//                    .clipShape(RoundedRectangle(cornerRadius: 20))
//                ,
//                alignment: .bottomTrailing
//            )
        
        Image(systemName: "heart.fill")
            .foregroundStyle(Color.white)
            .scaleEffect(2)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.pink.opacity(0.4), radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.secondary)
                            .frame(width: 40, height: 40)
                            .overlay {
                                Text("1")
                                    .foregroundStyle(Color.white)
                            }
                    })
            )
            
                
        
        
    }
}

#Preview {
    Lecture_08_Background_and_Overlay()
}
