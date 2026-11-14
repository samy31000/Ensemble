//
//  MessagelistView.swift
//  Ensemble
//
//  Created by Oummi . on 30/10/2026.
//

import SwiftUI

struct MessagelistView: View {
    var body: some View {
        VStack(spacing: 0) {

        
        List{
            
           
            
            HStack{
                
                
                
                Image ("leonardo")
                    .resizable()
                    .frame(width: 48,height: 48)
                    .scaledToFill()
                    .clipShape(.circle)
                
                
                
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text("Leonardo")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Spacer()
                        Text("09:44")
                            .padding()
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.bcgLightBlue)
                            .frame(width: 270, height: 60)
                            .shadow(
                        color: .black.opacity(0.12),
                        radius: 2,
                        x: 0,
                        y: 4
                    )
                        
                        
                        Text ("Bonjour Fatou, comment vas-tu ?")
        
                            .lineLimit(2)
                            .foregroundStyle(.black)
                        
                    }
                    
                    Spacer()
                    
                    
                    
                    
                }.padding(.bottom)
                    .padding(.top)
            }
            HStack{
                
                Image ("fatou")
                    .resizable()
                    .frame(width: 48,height: 48)
                    .clipShape(.circle)
                Spacer()
                
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text("Fatou")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Spacer()
                        Text("09:58")
                            .padding()
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.bcgLightBlue)
                                .frame(width: 270, height: 60)
                                .shadow(
                            color: .black.opacity(0.12),
                            radius: 2,
                            x: 0,
                            y: 4
                        )
                            
                            
                            Text ("Très bien merci Leonardo, et toi ?")
                                .lineLimit(2)
                            
                                .foregroundStyle(.black)
                        
                    }
                }.padding(.bottom)
                    .padding(.top)
            }
            
            HStack{
                
                Image ("leonardo")
                    .resizable()
                    .frame(width: 48,height: 48)
                    .clipShape(.circle)
                Spacer()
                
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text("Leonardo")
                        
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Spacer()
                        Text("10:09")
                            .padding()
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.bcgLightBlue)
                                .frame(width: 270, height: 60)
                                .shadow(
                            color: .black.opacity(0.12),
                            radius: 2,
                            x: 0,
                            y: 4
                        )
                            
                            
                            Text ("je vais bien j'ai recu votre colis.")
                                .lineLimit(2)
                            
                                .foregroundStyle(.black)
                        
                    }
                }.padding(.bottom)
                    .padding(.top)
            }
            HStack{
                
                Image ("fatou")
                    .resizable()
                    .frame(width: 48,height: 48)
                    .clipShape(.circle)
                Spacer()
                
                
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text("Fatou")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Spacer()
                        Text("10:24")
                            .padding()
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.bcgLightBlue)
                                .frame(width: 270, height: 60)
                                .shadow(
                            color: .black.opacity(0.12),
                            radius: 2,
                            x: 0,
                            y: 4
                        )
                            
                            
                            Text ("merci je passe le récuperer.")
                                .lineLimit(2)
                            
                                .foregroundStyle(.black)
                        
                    
                    }
                }.padding(.bottom)
                    .padding(.top)
            }
        } // Fin List
        .scrollContentBackground(.hidden)
        .shadow(
    color: .black.opacity(0.12),
    radius: 8,
    x: 2,
    y: 4
)

    } // Fin VStack de la page
    .background {
        Color.veryLightBlue.ignoresSafeArea()
    }
    .toolbar(.visible, for: .navigationBar)
    .navigationBarTitleDisplayMode(.inline)
    .toolbar {
        ToolbarItem(placement: .principal) {
            Text("Messages")
                .font(.title)
                .fontWeight(.bold)
        }
    }
    .toolbarBackground(Color.veryLightBlue, for: .navigationBar)
    .toolbarBackground(.visible, for: .navigationBar)
} // Fin body
} // Fin MessagelistView

#Preview {
    NavigationStack {
        MessagelistView()
    }
}
