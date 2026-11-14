//
//  HeaderView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 02/11/2026.
//


import SwiftUI

struct HeaderView: View {

    var title: String
    var bannerText: String

    // false : parcours vert. true : parcours orange.
    var isHelper: Bool = false

    // Permet de revenir au choix du parcours.
    @Binding var hasStarted: Bool

    var body: some View {

        VStack(alignment: .leading) {

            HStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56)
                    .padding(8)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                Spacer()

                Text(title)
                    .font(.title)
                    .fontWeight(.bold)

                Spacer()

                ProfileAvatarView()
            } // Fin HStack du titre

            HStack {
                Text(bannerText)
                    .font(.headline)
                    .lineLimit(2...2)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer()

                Image("seniorMenu")
            } // Fin HStack du bandeau
            .padding(20)
            .background(.bcgLightBlue)
            .cornerRadius(20)
            .shadow(
                color: .black.opacity(0.12),
                radius: 2,
                x: 0,
                y: 4
            )

            HStack(spacing: 8) {
                LocationPillView()

                Spacer(minLength: 0)

                Button {
                    hasStarted = false
                } label: {
                    Label("Accueil", systemImage: "chevron.left")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .fixedSize()
                        .frame(minHeight: 44)
                }
                .buttonStyle(.plain)
                
            } // Fin HStack localisation et accueil
            .padding(.top, 8)

        } // Fin VStack de l’entête
        .padding(.top, 0)
        .padding(.horizontal)
        .padding(.bottom, 18)
        .background {
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    isHelper
                    ? Color.secondaryOrange
                    : Color.secondaryGreen
                )
                .padding(.top, -30)
                .shadow(
                    color: .black.opacity(0.12),
                    radius: 2,
                    x: 0,
                    y: 4
                )
                .ignoresSafeArea(edges: .top)
        } // Fin fond de l’entête

    } // Fin body

} // Fin HeaderView

#Preview {
    HeaderView(
        title: "Services",
        bannerText: "Proposez votre aide\nprès de chez vous",
        isHelper: true,
        hasStarted: .constant(true)
    )
}
