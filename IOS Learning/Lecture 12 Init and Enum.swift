//
//  Lecture 12 Init and Enum.swift
//  IOS Learning
//
//  Created by  Sadi on 25/12/2024.
//

import SwiftUI

enum parameter {
    case apple
    case banana
}



struct Lecture_12_Init_and_Enum: View {
    
//    let info: parameter
//    var backgroundColor: Color
//    var name: String
//    var count : Int
//    
//    init(info: parameter) {
//        self.info = info
//        
//        if info == .apple {
//            backgroundColor = Color.orange
//            name = "Apple"
//            count = 44
//        } else {
//            backgroundColor = Color.red
//            name = "Banana"
//            count = 55
//        }
//    }
    
    
    let fruitName : String
    let count: Int
    let color: Color
    
    
    var body: some View {
//        RoundedRectangle(cornerRadius: 20)
//            .fill(backgroundColor)
//            .frame(width: 170, height: 170)
//            .overlay(alignment: .center) {
//                VStack {
//                    Text("\(count)")
//                        .underline()
//                    Text(name)
//                }
//                .font(.title)
//                .foregroundStyle(Color.white)
//            }
        
        RoundedRectangle(cornerRadius: 20)
            .fill(color)
            .frame(width: 170, height: 170)
            .overlay(alignment: .center) {
                VStack {
                    Text("\(count)")
                        .underline()
                    Text(fruitName)
                }
                .font(.title)
                .foregroundStyle(Color.white)
            }
        
        
        
    }
}

#Preview {
//    HStack {
//        Lecture_12_Init_and_Enum(info: .apple)
//        Lecture_12_Init_and_Enum(info: .banana)
//    }
    
    Lecture_12_Init_and_Enum(fruitName: "Lichi", count: 98, color: Color.purple)
    
}
