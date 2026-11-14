
//  ClassifiedsView.swift
//  Ensemble
//
//Created by Apprenant 24 on 30/10/2026.

import SwiftUI

struct ClassifiedsView: View {

    // Permet de revenir aux catégories.
    @Environment(\.dismiss) var dismiss

    // Même liste pour les annonces et les favoris.
    @Binding var listings: [Classifieds]

    var section: String
    var category: String
    var listingType: String

    // Choix effectué dans le menu de filtre.
    @State var selectedFilter: String = "Tous"

    // Les anciens appels restent utilisables.
    init(   
        listings: Binding<[Classifieds]> = .constant(classifieds),
        section: String = "",
        category: String = "",
        listingType: String = ""
    ) {
        self._listings = listings
        self.section = section
        self.category = category
        self.listingType = listingType
    }

    // Vérifie si une annonce correspond aux choix.
    func matchesFilters(_ data: Classifieds) -> Bool {

        return
            (section.isEmpty || data.section == section) &&
            (category.isEmpty || data.category == category) &&
            (listingType.isEmpty || data.listingType == listingType) &&
            (
                selectedFilter == "Tous" ||
                (selectedFilter == "Particuliers" && !data.isAssociation) ||
                (selectedFilter == "Associations" && data.isAssociation)
            )
    }

    // Compte uniquement les annonces correspondant aux choix.
    var resultsCount: Int {
        listings.filter { data in
            matchesFilters(data)
        }.count
    }

    var body: some View {

        VStack(spacing: 0) {
            
            // Compteur et filtre au-dessus des cartes.
            HStack {

                Text(
                    resultsCount == 1
                    ? "1 annonce trouvée"
                    : "\(resultsCount) annonces trouvées"
                )
                .font(.headline)

                Spacer()

                Menu {

                    Picker(
                        "Type de publication",
                        selection: $selectedFilter
                    ) {

                        Text("Tous")
                            .tag("Tous")

                        Text("Particuliers")
                            .tag("Particuliers")

                        Text("Associations")
                            .tag("Associations")

                    } // Fin Picker

                } label: {

                    Label(
                        selectedFilter,
                        systemImage: "line.3.horizontal.decrease.circle"
                    )
                    .font(.title2)
                    .frame(minWidth: 44, minHeight: 44)
                    .padding(.horizontal, 8)

                } // Fin Menu
                .tint(
                    listingType == "Demande"
                    ? Color.primaryOrange
                    : Color.primaryGreen
                )

            } // Fin HStack du compteur et du filtre
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.white)

            ScrollView {

                VStack(spacing: 20) {

                    if resultsCount == 0 {

                        Text("Aucune annonce ne correspond à ce filtre.")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding()

                    } // Fin condition sans résultat

                    ForEach($listings) { $data in

                        if matchesFilters(data) {

                            ClassifiedsCardView(data: $data)

                        } // Fin condition des filtres

                    } // Fin ForEach

                } // Fin VStack des cartes
                .padding(.vertical, 16)

            } // Fin ScrollView
            .scrollIndicators(.hidden)
        } // Fin VStack de la page
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {

            // Seul le fond dépasse les marges de sécurité.
            Color.veryLightBlue.ignoresSafeArea()

        } // Fin fond de la page

        // Fond bleu derrière la barre de navigation.
        .toolbarBackground(Color.veryLightBlue, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)

        // Bouton Retour avec son texte.
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Annonces")
                    .font(.title)
                    .fontWeight(.bold)
            } // Fin titre

            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {

                    Label("Retour", systemImage: "chevron.left")
                        .font(.headline)
                        .frame(minHeight: 44)

                } // Fin bouton Retour
                .tint(
                    listingType == "Demande"
                    ? Color.primaryOrange
                    : Color.primaryGreen
                )

            } // Fin ToolbarItem

        } // Fin toolbar

    } // Fin body

} // Fin ClassifiedsView

#Preview {
    NavigationStack {
        ClassifiedsView(
            listings: .constant(classifieds),
            section: "Services",
            category: "Transports",
            listingType: "Demande"
        )
    }
}
