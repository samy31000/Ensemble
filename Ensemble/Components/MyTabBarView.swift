//
//  MyTabBarView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 03/11/2026.
//


import SwiftUI

struct MyTabBarView: View {

    // Conserve les annonces et leurs favoris.
    @Binding var listings: [Classifieds]

    // Reçoit le choix effectué sur l’accueil.
    var isHelper: Bool = false
    
    // Permet de revenir au choix du parcours.
    @Binding var hasStarted: Bool

    var body: some View {

        TabView {

            Tab("Services", systemImage: "square.grid.2x2") {

                NavigationStack {

                    CategoriesView(
                        pageTitle: "Services",
                        pageBannerText: isHelper
                            ? "Proposez votre aide\nprès de chez vous"
                            : "Trouvez un coup de main\nprès de chez vous !",
                        pageItems: categories,
                        listings: $listings,
                        listingType: isHelper ? "Demande" : "Offre",
                        hasStarted: $hasStarted
                    )
                }
            }

            Tab("Activités", systemImage: "cup.and.saucer") {

                NavigationStack {

                    CategoriesView(
                        pageTitle: "Activités",
                        pageBannerText: isHelper
                            ? "Proposez une activité\nprès de chez vous"
                            : "Trouvez une activité\nprès de chez vous !",
                        pageItems: activities,
                        listings: $listings,
                        listingType: isHelper ? "Demande" : "Offre",
                        hasStarted: $hasStarted
                    )
                }
            }

            Tab("Messages", systemImage: "envelope") {

                NavigationStack {
                    MessagelistView()
                }
            }

            Tab("Favoris", systemImage: "heart") {

                NavigationStack {
                    FavoritesView(listings: $listings)
                }
            }
        }
        .tint(
            isHelper ? Color.primaryOrange : Color.primaryGreen
        )
    }
}

#Preview {
    MyTabBarView(
        listings: .constant(classifieds),
        hasStarted: .constant(true)
    )
}
