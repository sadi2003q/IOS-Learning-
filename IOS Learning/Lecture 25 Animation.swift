//
//  Lecture 25 Animation.swift
//  IOS Learning
//
//  Created by  Sadi on 27/12/2024.
//

import SwiftUI

struct Lecture_25_Animation: View {
    
    
    @State var changeColor: Bool = false

    var backgroundColor: Color {
        changeColor ? .red : .blue
    }

    
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .strokeBorder(Color.pink, lineWidth: 5)
                .frame(width: 300, height: 400)
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.5)) {
                        changeColor.toggle()
                    }
                }
                .overlay {
                    Text("This is the code")
                }
            
        }
    }
    
    
    
//  MARK: ANIMATION
//    var body: some View {
//        ZStack {
//            backgroundColor.ignoresSafeArea()
//            Button {
//                withAnimation(.easeOut(duration: 0.5)) {
//                    changeColor.toggle()
//                }
//            } label: {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.white)
//                    .frame(width: 100, height: 100)
//                    .foregroundStyle(Color.black)
//                    .overlay {
//                        Text("Color Change")
//                    }
//            }
//            
//        }
//    }
    
    
//  MARK: ANIMATION 2
//    ZStack {
//        RoundedRectangle(cornerRadius: changeColor ? 150 : 20)
//            .fill(Color.blue)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 10))
//            .frame(width: 300, height: 300)
//            .overlay {
//                Text("change : \(changeColor.description)")
//                    .font(.largeTitle)
//                    .foregroundStyle(Color.white)
//            }
//            .onTapGesture {
//                changeColor.toggle()
//            }
//            .animation(.easeInOut(duration: 0.5), value: changeColor)
//        
//    }
    
}

#Preview {
    Lecture_25_Animation()
}
