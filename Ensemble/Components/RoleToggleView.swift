//
//  RoleToggleView.swift
//  Ensemble
//
//  Created by Apprenant 24 on 04/11/2026.
//

import SwiftUI

struct RoleToggleView: View {

    // false : un senior ou un proche aidant cherche de l’aide.
    // true : une personne ou une association propose son aide.
    @Binding var isHelper: Bool

    var body: some View {

        HStack(spacing: 0) {

            Button {
                isHelper = false
            } label: {
                Text("Je cherche\nde l’aide")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .foregroundStyle(
                        isHelper ? Color.black : Color.white
                    )
                    .background {
                        Capsule()
                            .fill(
                                isHelper
                                ? Color.clear
                                : Color.primaryGreen
                            )
                    }
            }
            

            Button {
                isHelper = true
            } label: {
                Text("Je souhaite\naider")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .foregroundStyle(
                        isHelper ? Color.black : Color.black
                    )
                    .background {
                        Capsule()
                            .fill(
                                isHelper
                                ? Color.secondaryOrange
                                : Color.clear
                            )
                    }
            }
        }
        .font(.headline)
        .multilineTextAlignment(.center)
        .buttonStyle(.plain)
        .padding(4)
        .background(Color.bcgLightBlue)
        .clipShape(Capsule())
        
    }
}

// Permet de tester les clics dans la preview.
struct RoleToggleTestView: View {

    @State var isHelper: Bool = false

    var body: some View {
        RoleToggleView(isHelper: $isHelper)
            .padding()
    }
}

#Preview {
    RoleToggleTestView()
}
