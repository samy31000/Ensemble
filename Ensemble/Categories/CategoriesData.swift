//
//  CategoriesData.swift
//  Ensemble
//
//  Created by Apprenant 24 on 30/10/2026.
//

import Foundation

struct Categories: Identifiable {
    var id = UUID()
    
    var profileIcon: String
    var categoryIcon: String
    var categoryTitle: String
    
}

let categories: [Categories] = [
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "cart",
        categoryTitle: "Courses"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "car",
        categoryTitle: "Transports"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "house",
        categoryTitle: "Aide à la maison"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "document",
        categoryTitle: "Papiers et démarches"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "desktopcomputer.and.macbook",
        categoryTitle: "Aide numérique"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "wrench.and.screwdriver",
        categoryTitle: "Bricolage"
    )
]


let activities: [Categories] = [
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "cup.and.saucer",
        categoryTitle: "Café"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "dice",
        categoryTitle: "Jeux"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "figure.walk",
        categoryTitle: "Sorties"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "sun.max",        
        categoryTitle: "Événements"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "person.3",
        categoryTitle: "Ateliers"
    ),
    Categories(
        profileIcon: "person.circle.fill",
        categoryIcon: "wrench",
        categoryTitle: "À la une"
    )
]
