//
//  CategoriesView.swift
//  Ensemble
//
//  Created by Apprenant 24 on 30/10/2026.
//
//












import SwiftUI

struct CategoriesView: View {

    var pageTitle: String
    var pageBannerText: String
    var pageItems: [Categories]

    // Même liste pour les annonces et les favoris.
    @Binding var listings: [Classifieds]

    // Offre : parcours vert. Demande : parcours orange.
    var listingType: String = "Offre"
    
    // Permet de revenir à l’accueil depuis Services.
    @Binding var hasStarted: Bool
    
    @State private var isShowingPublishSheet = false
    

    var body: some View {

        ZStack(alignment: .top) {

            Color.veryLightBlue
                .ignoresSafeArea()

            VStack {

                HeaderView(
                    title: pageTitle,
                    bannerText: pageBannerText,
                    isHelper: listingType == "Demande",
                    hasStarted: $hasStarted
                )
                .fixedSize(horizontal: false, vertical: true)
                
                
                       

              
                
                Spacer(minLength: 0)
                
                LazyVGrid(
                    columns: [
                        GridItem(.flexible(), spacing: 4),
                        GridItem(.flexible())
                    ],
                    spacing: 4
                ) {

                    ForEach(pageItems) { category in

                        NavigationLink {

                            ClassifiedsView(
                                listings: $listings,
                                section: pageTitle,
                                category: category.categoryTitle,
                                listingType: listingType
                            )
                       

                        } label: {

                            CategoryCardView(
                                categoryBox: category,
                                isHelper: listingType == "Demande"
                            )
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 4)
                
                Spacer(minLength: 0)
                
                Button {
                                        isShowingPublishSheet = true // Ouvre la feuille modale
                                    } label: {
                                        HStack {
                                            Image(systemName: "plus.circle.fill")
                                            Text("Publier une annonce")
                                                .fontWeight(.semibold)
                                        }
                                        .foregroundColor(listingType == "Demande" ? .primaryOrange : .primaryGreen)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(
                                            RoundedRectangle(cornerRadius: 16)
                                                .stroke(listingType == "Demande" ? .primaryOrange : .primaryGreen, lineWidth: 1.5)
                                        )
                                    }
                                    .padding(.horizontal)
                                    .padding(.bottom, 24)
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .sheet(isPresented: $isShowingPublishSheet) {
            Text("Formulaire de publication d'annonce")
                .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    NavigationStack {
        CategoriesView(
            pageTitle: "Services",
            pageBannerText: "Trouvez un coup de main près de chez vous !",
            pageItems: categories,
            listings: .constant(classifieds),
            listingType: "Offre",
            hasStarted: .constant(true)
        )
    }
}
