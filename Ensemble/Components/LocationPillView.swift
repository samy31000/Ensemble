//
//  LocationPillView.swift
//  Ensemble
//
//  Created by Apprenant 100 on 02/11/2026.
//

import SwiftUI

struct LocationPillView: View {
    
    @State var cityName: String = ""
    @State var distance: Double = 5
    @State var showSettings: Bool = false
    
    var body: some View {
      
        HStack {
                    Image(systemName: "mappin.and.ellipse")
                .foregroundStyle(.primaryGreen)
            
            Text(cityName.isEmpty ? "Localisation" : cityName)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .truncationMode(.tail)
            
            Text("\(Int(distance))km")
                            .fontWeight(.semibold)
            
                    Image(systemName: "chevron.down")
                }
                .padding()
                .background(.white)
                .clipShape(Capsule())
                .onTapGesture {
                    showSettings = true
                }
        
                .sheet(isPresented: $showSettings) {
                    
                    VStack(spacing: 15) {
                        
                        Spacer()
                        
                        Text("Modifier la recherche :")
                            .font(.headline)
                        
                        TextField("Nom de la ville", text: $cityName)
                            .textFieldStyle(.roundedBorder)
                            .padding(.horizontal)
                        
                        VStack(spacing: 6){
                            Text("Rayon : \(Int(distance)) km")
                            
                            Slider(value: $distance, in: 1...20, step: 1)
                                .tint(.primaryGreen)
                                .padding()
                        }
                        
                        Button {
                            showSettings = false
                        } label: {
                            Text("Valider")
                                .bold()
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                                        .tint(.primaryGreen)
                                        .controlSize(.large)
                                        .bold()
                                        .padding(.horizontal)
                                        
                }
                    
                    .presentationDetents([.fraction(0.35)])
            }
        }
    }


#Preview {
    LocationPillView()
        .padding()
                .background(.secondaryOrange)
}
