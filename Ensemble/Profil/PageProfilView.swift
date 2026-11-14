//
//  PageProfilView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 04/11/2026.
//

import SwiftUI

struct PageProfilView: View {
    
    @State var firstName: String = "Jeanne"
    @State var lastName: String = "Duval"
    @State var age: String = "74"
    @State var city: String = "Lyon"
    @State var description: String = "Retraitée, j’aime la lecture, la cuisine et les promenades. Je souhaite rencontrer des personnes du quartier pour partager un café ou une activité."
    
    var body: some View {
        ZStack {
                    Color.veryLightBlue.ignoresSafeArea()
            
            VStack(spacing: 16) {
                
                ProfileAvatarView(size: 125)
                
                Spacer()
                
            Text("Profil:")
                    .bold()
                    .font(.title2)
                    .underline()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.black)
                
                HStack(spacing: 12){
                    ProfileFieldView(placeholder: "Nom:" , userText: $lastName)
                        .foregroundStyle(.black)
                    ProfileFieldView(placeholder: "Prénom:", userText: $firstName)
                }
                
                HStack (spacing: 12){
                    ProfileFieldView(placeholder: "Âge:", userText: $age)
                    ProfileFieldView(placeholder: "Ville:", userText: $city)
                }
                 
                ProfileFieldView(placeholder: "Bio...", userText: $description, lines: 5)
                
                Spacer()
            }
            .padding()
            
        }
    }
}

#Preview {
    PageProfilView()
}
