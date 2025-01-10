//
//  Lecture 52 ContentUnavailableView.swift
//  IOS Learning
//
//  Created by  Sadi on 08/01/2025.
//

import SwiftUI

struct Lecture_52_ContentUnavailableView: View {
    
    @State private var showSheet: Bool = false
    
    
    var body: some View {
        VStack {
            Button_PopOver
        }
        .sheet(isPresented: $showSheet) {
            View_ContentUnavailable_2
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
        
    }
    
    
    private var Button_PopOver: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Pop Over")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: 200)
                .background(
                    LinearGradient(
                        colors: [.red, .pink],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.45), radius: 10, x: 5, y: 5)
        }
    }
    
    private var View_ContentUnavailable_1: some View {
        VStack {
            ContentUnavailableView("Unavailable", systemImage: "questionmark.circle", description: Text("Content is not Available right now, Please try again later."))
        }
    }
    
    private var View_ContentUnavailable_2: some View {
        VStack {
            ContentUnavailableView.search
        }
    }
    
    
    
    
}

#Preview {
    Lecture_52_ContentUnavailableView()
}
