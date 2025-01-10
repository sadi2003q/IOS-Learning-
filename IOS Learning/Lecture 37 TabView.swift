//
//  Lecture 37 TabView.swift
//  IOS Learning
//
//  Created by  Sadi on 02/01/2025.
//

import SwiftUI

struct Lecture_37_TabView: View {
    
    /// Change the Colour for indication dot
    ///
    /// This will change the color but also all the indication color so not recommended 
    init() {
       UIPageControl.appearance().currentPageIndicatorTintColor = .red
       UIPageControl.appearance().pageIndicatorTintColor = /*UIColor.black.withAlphaComponent(0.2)*/
        UIColor.black.withAlphaComponent(1)
       }
    
    
    var body: some View {
        TabView {
            Tab("Capsule", systemImage: "capsule.on.capsule") {
                capsuleView
            }
            Tab("Circle", systemImage: "circle") {
                circeView
            }
            Tab("Rectangular", systemImage: "rectangle") {
                RectangularView
            }
            Tab("Square", systemImage: "house") {
                triangleView
            }
        }
        
        //.tabViewStyle(TabBarOnlyTabViewStyle())
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .tint(.green)
        
    }
    
    var capsuleView: some View {
        Capsule()
            .frame(width: 300, height: 100)
            .overlay{
                Text("Opening View")
                    .foregroundStyle(Color.white)
                    .font(.title)
            }
    }
    
    var circeView: some View {
        Circle()
            .frame(width: 300, height: 300)
            .overlay{
                Text("Opening View")
                    .foregroundStyle(Color.white)
                    .font(.title)
            }
    }
    
    
    var RectangularView: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 300, height: 100)
            .overlay{
                Text("Opening View")
                    .foregroundStyle(Color.white)
                    .font(.title)
            }
    }
    
    var triangleView: some View {
        Rectangle()
            .frame(width: 300, height: 300)
            .overlay{
                Text("Opening View")
                    .foregroundStyle(Color.white)
                    .font(.title)
            }
    }
    
    
    
}

#Preview {
    Lecture_37_TabView()
}
