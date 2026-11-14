//
//  MessagesData.swift
//  Ensemble
//
//  Created by Apprenant 24 on 30/10/2026.
//

import Foundation

struct Messages: Identifiable {
    var id = UUID()
    var profileIcon: String
    var avatarIcon: String
    var messagePseudo: String
    var messageDescription: String
    var hour: String
    var isSender: Bool
}

let messagesData = [
    Messages(
        profileIcon: "person.circle",
        avatarIcon: "person.circle",
        messagePseudo: "Leonardo",
        messageDescription: "Bonjour Fatou, comment vas-tu ?",
        hour: "08:34",
        isSender: false
    ),
    Messages(
        profileIcon: "person.circle",
        avatarIcon: "person.circle",
        messagePseudo: "Fatou",
        messageDescription: "Très bien merci Leonardo, et toi ?",
        hour: "08:40",
        isSender: true
    ),
    Messages(
        profileIcon: "person.circle",
        avatarIcon: "person.circle",
        messagePseudo: "Leonardo",
        messageDescription: "Je t'invite à boire un thé, es-tu disponible ?",
        hour: "12:39",
        isSender: false
    ),
    Messages(
        profileIcon: "person.circle",
        avatarIcon: "person.circle",
        messagePseudo: "Fatou",
        messageDescription: "Avec plaisir, à demain 08h00.",
        hour: "19:40",
        isSender: true
    )
]
