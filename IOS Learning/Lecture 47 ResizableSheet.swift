//
//  Lecture 47 ResizableSheet.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

/// This is the new Way of making sheet, Full screen Cover, Pop Over and all
/// **Environment variable `dismiss()` will not work with popOver modifier**


/// Presentation Detent Modifer
/// .large
/// .medium
/// .fractional
/// .height


///presentationDetents([.large, .medium], selection: $presentationDetent) here this will only work when the selected value of presentationDetent variable value is also in the array


struct Lecture_47_ResizableSheet: View {
    
    @State private var showSheet: Bool = false
    
    @State private var presentationDetent: PresentationDetent = .large
    
    
    
    var body: some View {
        VStack {
            Button_Sheet
        }
        .popover(isPresented: $showSheet) {
            SheetView
                .presentationCompactAdaptation(.sheet)
                .presentationDetents([.large, .medium], selection: $presentationDetent)
                .presentationDragIndicator(.hidden)
                .presentationBackgroundInteraction(.automatic)
                .interactiveDismissDisabled() /// Disable the drag option
            
        }
        
    }
    
    
    private var Button_Sheet: some View {
        Button {
            showSheet.toggle()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(width: 300, height: 68)
                .overlay {
                    Text("Sheet")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .underline()
                }
        }

    }
    
    private var SheetView : some View {
        VStack {
            
            Button("Dismiss") {
                presentationDetent = .medium
            }
            
            ContentUnavailableView.search(text: "What you are searching is not found")
            
            Button("Dismiss") {
                showSheet.toggle()
            }
            .buttonBorderShape(.roundedRectangle)
            
        }
    }
    
}

#Preview {
    Lecture_47_ResizableSheet()
}
