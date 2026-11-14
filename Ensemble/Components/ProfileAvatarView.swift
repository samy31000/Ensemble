//
//  ProfileAvatarView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 02/11/2026.
//

import SwiftUI

struct ProfileAvatarView: View {
    
    var size: CGFloat = 64
    
    var body: some View {
        NavigationLink(destination: PageProfilView()){
            
            Image("jeanne")
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .clipShape(.circle)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ProfileAvatarView()
}
