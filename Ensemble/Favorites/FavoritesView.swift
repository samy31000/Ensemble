import SwiftUI

struct FavoritesView: View {

    @Binding var listings: [Classifieds]

    var body: some View {

        VStack(spacing: 0) {

            Text("Mes favoris")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()

            // Vérifie si une annonce est en favori.
            if listings.contains(where: { $0.isFavorite }) {

                ScrollView {

                    VStack(spacing: 20) {

                        ForEach($listings) { $data in

                            if data.isFavorite {

                                ClassifiedsCardView(data: $data)

                            } // Fin condition favori

                        } // Fin ForEach

                    } // Fin VStack des cartes
                    .padding(.vertical)

                } // Fin ScrollView
                .scrollIndicators(.hidden)
            } else {

                Spacer()

                Text("Vous n’avez pas encore de favoris")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()

                Spacer()

            } // Fin condition de présence des favoris

        } // Fin VStack de la page
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.veryLightBlue.ignoresSafeArea()
        }

        // Cette page utilise la tabbar pour changer d’onglet.
        .navigationBarBackButtonHidden(true)

    } // Fin body

} // Fin FavoritesView

#Preview {
    FavoritesView(listings: .constant(classifieds))
}
