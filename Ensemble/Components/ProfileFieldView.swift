//
//  ProfileFieldView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 04/11/2026.
//

import SwiftUI

struct ProfileFieldView: View {
    
    var placeholder: String
@Binding var userText: String
    var lines: Int = 1
    
    
    var body: some View {
        TextField(placeholder, text: $userText, axis: .vertical)
            .lineLimit(lines, reservesSpace: true)
            .bold()
            .font(.title3)
            .foregroundStyle(.black)
            .padding()
            .background(.white)
            .cornerRadius(12)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black.opacity(0.8))
                }
    }
}

#Preview {
    ProfileFieldView(placeholder: "Prénom", userText: .constant(""))
}

