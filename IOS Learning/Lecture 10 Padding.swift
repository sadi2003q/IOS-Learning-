//
//  Lecture 10 Padding.swift
//  IOS Learning
//
//  Created by  Sadi on 24/12/2024.
//

import SwiftUI

struct Lecture_10_Padding: View {
    var body: some View {
//        Text("Hii I am Adnan")
//            .padding()
//            .background(Color.gray)
//        Text("This is another line of hard code")
//            .background(Color.gray)
//            .padding(.vertical, 20)
//        
//        HStack {
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 80, height: 80)
//            Spacer()
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 80, height: 80)
//        }
//        .padding(.horizontal)
//        
//        Text("I want to develop a Machine learning Algorithm")
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.horizontal)
        
        VStack(alignment: .leading) {
            Text("Hello IOS developer")
                .bold()
                .font(.largeTitle)
                .padding(.vertical)
            Text("I am doing IOS developping and this time it will work for me like never before, this time i will go deep into what is happening and find all the lacking be the best version of me")
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.gray, radius: 20, x: 0, y: 10)
        
        
    }
}

#Preview {
    Lecture_10_Padding()
}
