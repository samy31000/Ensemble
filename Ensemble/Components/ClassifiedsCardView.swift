import SwiftUI

struct ClassifiedsCardView: View {

    @State var isExpanded: Bool = false
    @State var listingButtonText: String = "Voir l'annonce"
    @State var listingButtonIcon: String = "chevron.down"
    @State var listingButtonTextColor: Color = .primaryGreen
    @State var listingButtonBcgcolor: Color = .clear

    @Binding var data: Classifieds

    // Couleur des icônes et du bouton selon le type d’annonce.
    var cardColor: Color {
        data.listingType == "Demande"
        ? Color.primaryOrange
        : Color.primaryGreen
    }

    var body: some View {

        ZStack {

            // Contient toute la carte.
            VStack(spacing: 0) {

                // Haut de la carte : profil, favori et description.
                VStack(alignment: .leading) {

                    HStack {

                        Image(data.avatarIcon)
                            .resizable()
                            .frame(width: 54, height: 54)
                            .clipShape(.circle)
                            .offset(y: -1)

                        // Pseudo et badge.
                        VStack(alignment: .leading, spacing: 5) {

                            Text(data.pseudo)
                                .font(.title2)
                                .fontWeight(.semibold)

                            ZStack {

                                RoundedRectangle(cornerRadius: 55)
                                    .fill(Color.white)
                                    .frame(width: 147, height: 27)

                                HStack(spacing: 6) {

                                    Image(systemName: "shield")

                                    Text("identité vérifiée")
                                        .font(.subheadline)

                                } // Fin HStack du badge

                            } // Fin ZStack du badge

                        } // Fin VStack du pseudo et du badge

                        Spacer()

                        Button {
                            data.isFavorite.toggle()
                        } label: {

                            Image(
                                systemName: data.isFavorite ? "heart.fill" : "heart"
                            )
                                .resizable()
                                .scaledToFit()
                                .frame(width: 26, height: 26)
                                .foregroundStyle(
                                    data.isFavorite
                                    ? Color.red
                                    : Color.black
                                )
                                .frame(width: 54, height: 54)
                                .background(.white)
                                .clipShape(.circle)
                                

                        } // Fin bouton favori

                    } // Fin HStack du profil et du favori
                   

                    VStack(alignment: .leading, spacing: 4) {

                        Text(data.addTitle)
                            .font(.title2)
                            .fontWeight(.bold)

                        Text(data.addDescription)
                            .font(.title2)
                            .lineLimit(3)
                            
                        
                        

                    } // Fin VStack du titre et de la description

                } // Fin VStack du haut de la carte
                .padding(17)
                .frame(width: 362)
                .frame(minHeight: 180)
                //.frame(maxHeight: 250)
                .background {

                    // Orange très pâle pour les demandes.
                    if data.listingType == "Demande" {

                        Color.white
                            .overlay {
                                Color.secondaryOrange.opacity(0.20)
                            }

                    } else {

                        Color.bcgLightGreen

                    } // Fin condition de couleur

                } // Fin background du haut de la carte
                
                // Referme la carte et rétablit le bouton initial.
                if isExpanded == true {

                 
                    Button {

                        isExpanded = false
                        listingButtonText = "Voir l'annonce"
                        listingButtonIcon = "chevron.down"
                        listingButtonTextColor = cardColor
                        listingButtonBcgcolor = .clear

                    } label: {

                        HStack(spacing: 10) {

                            Text("Réduire l'annonce")

                            Image(systemName: "chevron.up")

                        } // Fin HStack du bouton Réduire

                        
                    } // Fin bouton Réduire
                    .buttonStyle(.borderless)
                    .tint(.gray)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 10)
                    .padding(.top, 6)
                    .background(.white)
                
                }
                // Fin condition du bouton Réduire
                

                
                
                // Début du bloc de la carte dépliée.
                if isExpanded == true {

                    VStack(alignment: .leading) {

                        

                            Text("Quand ?")
                                .font(.title2)
                                .fontWeight(.bold)
                        
                                

                            Text(data.whenDetails)
                                .font(.title2)
                                .lineLimit(2)
                                .lineSpacing(1)

                     
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 4) {

                            Text("Organisation")
                                .font(.title2)
                                .fontWeight(.bold)

                            Text(data.organization)
                                .font(.title2)
                                .lineLimit(2)
                                

                        } // Fin VStack Organisation
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 4) {

                            Text("A savoir")
                                .font(.title2)
                                .fontWeight(.bold)

                            Text(data.additionalInfo)
                                .font(.title2)
                                .lineLimit(2)
                           
                               

                        } // Fin VStack À savoir

                        
                    } // Fin VStack des trois rubriques
                    .padding(20)
                    .frame(width: 362)
                    .background(.white)

                    
                } // Fin du bloc de la carte dépliée

                // Début du bloc date, localisation et bouton.
                VStack(alignment: .leading) {
                  

                    HStack {
                        
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(cardColor)

                        Text(data.availability)
                            .font(.headline)
                            .offset(x:4, y: 6)

                        Spacer()

                        

                    } // Fin HStack de la date et localisation
                    

                    HStack {

                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(cardColor)
                        

                        Text(data.location)
                            .font(.headline)
                            .offset(x:8, y: 4)
                        

                    }.padding(.bottom, 20) // Fin HStack de la localisation
                    

                    
                    // Déplie la carte et adapte le bouton.
                    Button {

                        if isExpanded == false {

                            isExpanded = true
                            listingButtonText = "Répondre à l'annonce"
                            listingButtonIcon = "text.bubble"
                            listingButtonTextColor = cardColor
                            listingButtonBcgcolor = .clear

                        } // Fin condition pour déplier la carte

                    } label: {

                        HStack {

                            Text(listingButtonText)
                                .font(.title2)

                            Spacer()

                            Image(systemName: listingButtonIcon)

                        } // Fin HStack du bouton principal
                        .padding(.leading, 10)
                        .padding(.horizontal, 25)
                        .frame(height: 48)
                        .contentShape(Rectangle())

                    } // Fin bouton principal
                    .buttonStyle(.plain)
                    .foregroundStyle(
                        isExpanded
                        ? listingButtonTextColor
                        : cardColor
                    )
                    .fontWeight(.semibold)
                    .overlay {

                        RoundedRectangle(cornerRadius: 12)
                            .stroke(cardColor, lineWidth: 1.5)

                    } // Fin contour du bouton principal
                    .background {

                        RoundedRectangle(cornerRadius: 12)
                            .fill(listingButtonBcgcolor)

                    } // Fin fond du bouton principal

                } // Fin VStack date, localisation et bouton
                .padding(20)
                .frame(width: 362)
                .frame(minHeight: 200)
                .background(.white)

            } // Fin VStack de toute la carte
            .frame(width: 362)
            .clipShape(
                RoundedRectangle(cornerRadius: 30)
            )
                .shadow(
                    color: .black.opacity(0.12),
                    radius: 2,
                    x: 0,
                    y: 4
                )
            // Animation désactivée pour préserver le texte du bouton.
            .transaction { transaction in
                transaction.animation = nil
                transaction.disablesAnimations = true
            }

        } // Fin ZStack
        

    } // Fin body

} // Fin ClassifiedsCardView

#Preview {
    ClassifiedsCardView(data: .constant(classifieds[0]))
}
