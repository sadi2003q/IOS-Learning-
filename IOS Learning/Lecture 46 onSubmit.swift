//
//  Lecture 46 onSubmit.swift
//  IOS Learning
//
//  Created by  Sadi on 07/01/2025.
//

import SwiftUI

///1.    .done
///     •    Displays “Done” on the return key.
///2.    .go
///     •    Displays “Go” on the return key.
///3.    .send
///     •    Displays “Send” on the return key.
///4.    .search
///     •    Displays “Search” on the return key.
///5.    .join
///     •    Displays “Join” on the return key.
///6.    .route
///     •    Displays “Route” on the return key.
///7.    .return
///     •    Displays “Return” on the return key.
///8.    .next
///     •    Displays “Next” on the return key.
///9.    .continue
///     •    Displays “Continue” on the return key.


struct Lecture_46_onSubmit: View {
    
    @State private var userName: String = ""
    
    var body: some View {
        TextField_UserName
    }
    
    private var TextField_UserName : some View {
        TextField("Username", text: $userName)
            .submitLabel(.go)
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
            .autocapitalization(.none) // Prevent autocapitalization
            .disableAutocorrection(true)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue.opacity(0.7), lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

#Preview {
    Lecture_46_onSubmit()
}
