//
//  Lecture 28 Sheet and full Screen cover.swift
//  IOS Learning
//
//  Created by  Sadi on 30/12/2024.
//

import SwiftUI

struct Lecture_28_Sheet_and_full_Screen_cover: View {
    
    @State var sheetView: Bool = false
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 200, height: 80)
                .overlay {
                    Text("Open View")
                        .font(.title)
                        .foregroundStyle(Color.white)
                    
                }
                .onTapGesture {
                    sheetView.toggle()
                }
        }
//        .sheet(isPresented: $sheetView) {
//            SheetView(sheetView: $sheetView)
//                .presentationDetents([.medium])//.medium, .large, .height(px), .fractional(float)
//        }
        .fullScreenCover(isPresented: $sheetView) {
            SheetView(sheetView: $sheetView)
                //.presentationDetents([.medium])//.medium, .large, .height(px), .fractional(float)
        }
    }
}

struct SheetView: View {
    
    @Binding var sheetView: Bool
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ZStack {
            
            Color.purple.ignoresSafeArea()
            
            Circle()
                .fill(Color.white)
                .frame(width: 200)
                .shadow(radius: 10)
                .overlay(alignment: .center) {
                    Text("Circle")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .onTapGesture {
                    dismiss()
                }
        }
    }
}




#Preview {
    Lecture_28_Sheet_and_full_Screen_cover()
    //SheetView()
}
