//
//  Lecture 42 Async Image.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

struct Lecture_42_Async_Image: View {
    
    @State private var url: String = "https://picsum.photos/300/200"
    
    var body: some View {
        VStack {
            
            ///This will return an Image but this is not customisable
//            AsyncImage(url: URL(string: url))
            
            /// This will also return an Image and This is Customisable
//            AsyncImage(url: URL(string: url)) { image in
//                image
//                    .frame(width: 300, height: 200)
//            } placeholder: {
//                ProgressView()
//            }
            
            
            ///This is for new 3 Phases in Async Image
            AsyncImage(url: URL(string: url)) { phase in
                switch phase {
                case .empty:
                    ProgressView("Downloading Image")
                case .success(let image):
                    image
                        .frame(width: 300, height: 200)
                default:
                    Image(systemName: "questionmark")
                }
                
            }
        }
    }
}

#Preview {
    Lecture_42_Async_Image()
}
