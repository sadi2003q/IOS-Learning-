//
//  Lecture 01 Text.swift
//  IOS Learning
//
//  Created by  Sadi on 19/12/2024.
//

import SwiftUI

struct Lecture_01_Text: View {
    var body: some View {
        Text("This is a code")
            .font(.title)                   // Font style
            .fontWeight(.medium)             // Font weight
            .underline(color: Color.red)     // Underline with color
            .italic()                        // Italicize the text
            .font(.system(size: 24, weight: .semibold)) // Custom system font with size and weight
            .foregroundColor(.blue)          // Text color
            .frame(width: 400, height: 30)   // Set width and height
            .padding()                       // Add default padding
            .background(Color.yellow)       // Background color
            .cornerRadius(10)                // Rounded corners
            .shadow(radius: 5)               // Add shadow with radius
            .lineLimit(1)                    // Limit number of lines
            .multilineTextAlignment(.leading) // Text alignment for multiple lines
            .baselineOffset(20)              // Adjust baseline for text positioning
            .allowsTightening(true)          // Allows text tightening for fitting
            .tracking(2)                     // Adjust letter spacing
            .frame(maxWidth: .infinity)      // Expand text frame to max width
            .minimumScaleFactor(0.5)         // Allow text to scale to fit
            .opacity(0.8)                    // Set opacity (transparency)
            
            .border(Color.gray, width: 1)    // Add border around the text view
            .animation(.easeInOut(duration: 0.3), value: 1) // Add animation
    }
}


#Preview {
    Lecture_01_Text()
}
