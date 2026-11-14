//
//  CategoryCardView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 30/10/2026.
//



import SwiftUI

struct CategoryCardView: View {

    var categoryBox: Categories

    // false : parcours vert. true : parcours orange.
    var isHelper: Bool = false

    var body: some View {

        HStack(spacing: 10) {

            Image(systemName: categoryBox.categoryIcon)
                .frame(width: 56, height: 56)
                .background {

                    if isHelper {

                        // Même orange pâle que les annonces.
                        Color.white
                            .overlay {
                                Color.secondaryOrange.opacity(0.20)
                            }

                    } else {

                        Color.secondaryGreen.opacity(0.48)

                    } // Fin condition de couleur

                } // Fin fond de l’icône
                .cornerRadius(14)
                .font(.title)
                .overlay {

                    RoundedRectangle(cornerRadius: 16)
                        .stroke(
                            isHelper
                            ? Color.primaryOrange.opacity(0.48)
                            : Color.primaryGreen.opacity(0.48)
                        )

                } // Fin contour de l’icône

            Text(categoryBox.categoryTitle)
                .lineLimit(
                    categoryBox.categoryTitle == "Événements" ? 1 : 2
                )
                .minimumScaleFactor(0.85)
                .layoutPriority(1)
               

            Spacer(minLength: 0)

        } // Fin HStack de la vignette
        .padding(.leading, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 90)
        .background(.white)
        .cornerRadius(16)
        .shadow(
            color: .black.opacity(0.12),
            radius: 2,
            x: 0,
            y: 6
        )
        .overlay {

            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    isHelper
                    ? Color.primaryOrange
                    : Color.primaryGreen
                )
                

        } // Fin contour de la vignette
                .padding(4)

            } // Fin body

} // Fin CategoryCardView

#Preview {
    CategoryCardView(
        categoryBox: categories[1],
        isHelper: true
    )
    .padding()
    .background(.veryLightBlue)
}


