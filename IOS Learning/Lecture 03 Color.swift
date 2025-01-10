//
//  Lecture 03 Color.swift
//  IOS Learning
//
//  Created by  Sadi on 19/12/2024.
//

import SwiftUI
import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}





struct Lecture_03_Color: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.primary
                //Color(red: 0.5, green: 0.7, blue: 0.2)
                //Color(red: 0.5, green: 0.7, blue: 0.2, opacity: 0.5)
                //Color(hex: "#FF5733")
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.red.opacity(0.3), radius: 10)
            
    }
}

#Preview {
    Lecture_03_Color()
}
