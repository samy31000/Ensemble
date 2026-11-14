//
//  WelcomeView.swift
//  Ensemble
//
//  Created by Apprenant 24 on 04/11/2026.
//

import SwiftUI

struct WelcomeView: View {

    // false : cherche de l’aide, parcours vert.
    // true : propose son aide, parcours orange.
    @State var isHelper: Bool = false

    // Ouvre le parcours après validation.
    @State var hasStarted: Bool = false
    
    // Conserve les favoris même après un retour à l’accueil.
    @State var listings: [Classifieds] = classifieds

    var body: some View {

        if hasStarted {

            MyTabBarView(
                listings: $listings,
                isHelper: isHelper,
                hasStarted: $hasStarted
            )

        } else {

            ZStack {

                Color.veryLightBlue
                    .ignoresSafeArea()

                ScrollView {

                    VStack(spacing: 20) {

                        // Logo en haut à gauche.
                        HStack {

                            Image("Logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .padding(5)
                                .background(Color.white)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 16)
                                )
                                .shadow(
                                    color: .black.opacity(0.05),
                                    radius: 5,
                                    x: 0,
                                    y: 2
                                )

                            Spacer()

                        } // Fin HStack du logo

                        Text("L’entraide commence près de chez vous")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundStyle(Color.primaryGreen)
                            

                        // Illustration centrée.
                        Image("welcome")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 240)
                            .frame(maxWidth: .infinity)
                            .accessibilityHidden(true)
                            

                        Text("Bienvenue,\nque souhaitez-vous faire aujourd’hui ?")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                          
                        
                        Spacer()

                        RoleToggleView(isHelper: $isHelper)
                            .fixedSize(horizontal: false, vertical: true)

                        Button {

                            hasStarted = true

                        } label: {

                            Text("Continuer")
                                .font(.headline)
                                .foregroundStyle(isHelper ? Color.black : Color.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .background(
                                    isHelper
                                    ? Color.secondaryOrange
                                    : Color.primaryGreen
                                )
                                .clipShape(Capsule())

                        } // Fin bouton Continuer
                        .buttonStyle(.plain)
                        

                    } // Fin VStack de la page
                    .padding(.horizontal, 24)
                    .padding(.vertical, 20)
                    

                } // Fin ScrollView

            } // Fin ZStack

        } // Fin condition du parcours

    } // Fin body

} // Fin WelcomeView

#Preview {
    WelcomeView()
}
