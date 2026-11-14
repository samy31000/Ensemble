import Foundation

struct Classifieds: Identifiable {

    var id = UUID()

    var avatarIcon: String
    var pseudo: String
    var isIdVerified: Bool
    var isFavorite: Bool
    var addTitle: String
    var addDescription: String
    var availability: String
    var location: String
    var whenDetails: String
    var organization: String
    var additionalInfo: String

    // Informations utilisées pour filtrer les annonces.
    var section: String = "Services"
    var category: String = ""
    var listingType: String = "Offre"
    var isAssociation: Bool = false
}

let classifieds: [Classifieds] = [

    // ============================================================
    // PARCOURS VERT — L’UTILISATEUR CHERCHE DE L’AIDE
    // 26 OFFRES PROPOSÉES PAR DES PARTICULIERS
    // ============================================================

    // ------------------------------------------------------------
    // SERVICES — COURSES : 3 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "fabrice",
        pseudo: "Fabrice",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Aide pour les courses",
        addDescription: "Je peux vous accompagner pour faire vos courses.",
        availability: "Le lundi matin",
        location: "Lyon 6e",
        whenDetails: "Chaque lundi, de 9 h à 11 h.",
        organization: "Nous allons ensemble aux magasins du quartier.",
        additionalInfo: "Préparez votre liste et vos sacs.",
        section: "Services",
        category: "Courses",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "mariam",
        pseudo: "Mariam",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Je porte vos sacs",
        addDescription: "Je vous aide à rapporter vos courses chez vous.",
        availability: "Le samedi matin",
        location: "Lyon 3e",
        whenDetails: "Le samedi, de 10 h à 12 h.",
        organization: "Retrouvons-nous devant votre magasin habituel.",
        additionalInfo: "Petit trajet à pied dans le quartier.",
        section: "Services",
        category: "Courses",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "maria",
        pseudo: "Maria",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Au marché ensemble",
        addDescription: "Je vous accompagne au marché près de chez vous.",
        availability: "Le vendredi matin",
        location: "Lyon 7e",
        whenDetails: "Chaque vendredi, de 9 h à 11 h.",
        organization: "Nous fixons un rendez-vous dans le quartier.",
        additionalInfo: "Accompagnement gratuit. Achats à votre charge.",
        section: "Services",
        category: "Courses",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // SERVICES — TRANSPORTS : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un trajet près de chez vous",
        addDescription: "Je vous accompagne en voiture à un rendez-vous.",
        availability: "Le mardi matin",
        location: "Villeurbanne",
        whenDetails: "Le mardi, de 9 h à 12 h.",
        organization: "Nous fixons le trajet et l’heure par message.",
        additionalInfo: "Trajet gratuit, à prévoir deux jours avant.",
        section: "Services",
        category: "Transports",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "patrice",
        pseudo: "Patrice",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Au rendez-vous ensemble",
        addDescription: "Je peux vous conduire à un rendez-vous dans le quartier.",
        availability: "Le jeudi matin",
        location: "Lyon 8e",
        whenDetails: "Le jeudi, de 9 h à 11 h.",
        organization: "Nous convenons du départ et du retour par message.",
        additionalInfo: "Trajet gratuit, à réserver deux jours avant.",
        section: "Services",
        category: "Transports",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE À LA MAISON : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "fatou",
        pseudo: "Fatou",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Préparons un repas ensemble",
        addDescription: "Je vous aide à cuisiner un repas simple chez vous.",
        availability: "Le mercredi midi",
        location: "Lyon 3e",
        whenDetails: "Chaque mercredi, de 11 h à 13 h.",
        organization: "Nous choisissons le menu avant ma venue.",
        additionalInfo: "Prévoyez les ingrédients et signalez vos allergies.",
        section: "Services",
        category: "Aide à la maison",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "mariam",
        pseudo: "Mariam",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Arrosons vos plantes",
        addDescription: "Je peux vous aider à entretenir vos plantes d’intérieur.",
        availability: "Le mardi après-midi",
        location: "Lyon 3e",
        whenDetails: "Le mardi, une visite de 45 minutes.",
        organization: "Nous arrosons les plantes et retirons les feuilles sèches.",
        additionalInfo: "Vous fournissez le matériel. Sans travail en hauteur.",
        section: "Services",
        category: "Aide à la maison",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // SERVICES — PAPIERS ET DÉMARCHES : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "kenza",
        pseudo: "Kenza",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un coup de main pour vos papiers",
        addDescription: "Je vous aide à lire un courrier ou un formulaire.",
        availability: "Le jeudi après-midi",
        location: "Lyon 7e",
        whenDetails: "Chaque jeudi, de 14 h à 16 h.",
        organization: "Nous regardons vos documents ensemble.",
        additionalInfo: "Vous gardez vos documents et prenez les décisions.",
        section: "Services",
        category: "Papiers et démarches",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "djibril",
        pseudo: "Djibril",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Classons vos courriers",
        addDescription: "Je vous aide à organiser vos courriers dans des pochettes.",
        availability: "Le mercredi après-midi",
        location: "Lyon 2e",
        whenDetails: "Le mercredi, de 14 h à 15 h.",
        organization: "Nous trions vos papiers ensemble, à votre rythme.",
        additionalInfo: "Prévoyez vos pochettes. Vous gardez les originaux.",
        section: "Services",
        category: "Papiers et démarches",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE NUMÉRIQUE : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "anthony",
        pseudo: "Anthony",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Apprivoisons votre téléphone",
        addDescription: "Je vous montre comment envoyer photos et messages.",
        availability: "Le samedi matin",
        location: "Villeurbanne",
        whenDetails: "Le samedi, une séance de 45 minutes.",
        organization: "Nous avançons à votre rythme sur votre téléphone.",
        additionalInfo: "Pensez à charger votre téléphone.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "leonardo",
        pseudo: "Leonardo",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Gardons vos photos",
        addDescription: "Je vous montre comment ranger vos photos sur votre mobile.",
        availability: "Le mardi matin",
        location: "Lyon 5e",
        whenDetails: "Le mardi, une séance de 45 minutes.",
        organization: "Nous créons quelques albums sur votre téléphone.",
        additionalInfo: "Téléphone chargé. Vous effectuez les manipulations.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // SERVICES — BRICOLAGE : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "patrice",
        pseudo: "Patrice",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un petit bricolage chez vous",
        addDescription: "Je peux resserrer une poignée ou monter un petit meuble.",
        availability: "Le vendredi après-midi",
        location: "Lyon 8e",
        whenDetails: "Chaque vendredi, de 14 h à 17 h.",
        organization: "Envoyez une photo du travail à réaliser.",
        additionalInfo: "Hors électricité, gaz et travaux en hauteur.",
        section: "Services",
        category: "Bricolage",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "fabrice",
        pseudo: "Fabrice",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Je prête mes outils",
        addDescription: "Je vous prête un petit kit pour vos bricolages simples.",
        availability: "Le samedi matin",
        location: "Lyon 6e",
        whenDetails: "Retrait le samedi, entre 9 h et 11 h.",
        organization: "Nous vérifions les outils ensemble avant le prêt.",
        additionalInfo: "Prêt gratuit pour une semaine maximum.",
        section: "Services",
        category: "Bricolage",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — CAFÉ : 3 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "marius",
        pseudo: "Marius",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un café entre voisins",
        addDescription: "Je vous propose un moment pour discuter.",
        availability: "Le mardi après-midi",
        location: "Lyon 4e",
        whenDetails: "Chaque mardi, de 15 h à 16 h.",
        organization: "Retrouvons-nous au café de la place.",
        additionalInfo: "Chacun règle sa consommation.",
        section: "Activités",
        category: "Café",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "medhi",
        pseudo: "Medhi",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une pause pour se rencontrer",
        addDescription: "Partageons un café et nos nouvelles du quartier.",
        availability: "Le samedi après-midi",
        location: "Villeurbanne",
        whenDetails: "Le samedi, de 14 h à 15 h.",
        organization: "Rendez-vous dans un café près de la mairie.",
        additionalInfo: "Chacun règle sa consommation.",
        section: "Activités",
        category: "Café",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "julie",
        pseudo: "Julie",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un café et un peu de compagnie",
        addDescription: "Je vous propose de faire connaissance autour d’un café.",
        availability: "Le jeudi après-midi",
        location: "Lyon 5e",
        whenDetails: "Chaque jeudi, de 15 h à 16 h.",
        organization: "Nous choisissons un café accessible ensemble.",
        additionalInfo: "Vous pouvez venir accompagné. Chacun règle sa boisson.",
        section: "Activités",
        category: "Café",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — JEUX : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "jacky",
        pseudo: "Jacky",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une partie de cartes ensemble",
        addDescription: "Je propose un après-midi cartes et jeux de société.",
        availability: "Le mardi après-midi",
        location: "Lyon 4e",
        whenDetails: "Chaque mardi, de 14 h à 16 h.",
        organization: "Nous jouons à la maison de quartier.",
        additionalInfo: "Débutants bienvenus. Les jeux sont fournis.",
        section: "Activités",
        category: "Jeux",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "marius",
        pseudo: "Marius",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Découvrons les échecs",
        addDescription: "Je propose une initiation tranquille aux échecs.",
        availability: "Le mercredi après-midi",
        location: "Lyon 4e",
        whenDetails: "Le mercredi, de 14 h à 15 h 30.",
        organization: "Nous jouons à deux à la maison de quartier.",
        additionalInfo: "Échiquier fourni. Aucune expérience nécessaire.",
        section: "Activités",
        category: "Jeux",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — SORTIES : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "mariam",
        pseudo: "Mariam",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une balade à votre rythme",
        addDescription: "Je vous accompagne pour une promenade au parc.",
        availability: "Le dimanche matin",
        location: "Lyon 6e",
        whenDetails: "Le dimanche, de 10 h à 11 h.",
        organization: "Rendez-vous à l’entrée du parc de la Tête d’Or.",
        additionalInfo: "Parcours plat avec pauses. Selon la météo.",
        section: "Activités",
        category: "Sorties",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "patrice",
        pseudo: "Patrice",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Découvrons le quartier",
        addDescription: "Je vous accompagne pour découvrir les petites rues du quartier.",
        availability: "Le jeudi matin",
        location: "Lyon 8e",
        whenDetails: "Le jeudi, de 10 h à 11 h.",
        organization: "Nous choisissons un petit circuit ensemble.",
        additionalInfo: "Marche douce avec pauses, selon la météo.",
        section: "Activités",
        category: "Sorties",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — ÉVÉNEMENTS : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "djibril",
        pseudo: "Djibril",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une fête de quartier ensemble",
        addDescription: "Je vous accompagne à une fête du quartier.",
        availability: "Selon le programme",
        location: "Lyon 2e",
        whenDetails: "Date et horaire à confirmer ensemble.",
        organization: "Nous nous retrouvons avant l’événement.",
        additionalInfo: "Nous choisissons un événement gratuit et accessible.",
        section: "Activités",
        category: "Événements",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "mariam",
        pseudo: "Mariam",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Une exposition entre voisins",
        addDescription: "Je vous accompagne à une exposition gratuite du quartier.",
        availability: "Le samedi après-midi",
        location: "Lyon 3e",
        whenDetails: "Un samedi, de 14 h à 16 h, selon le programme.",
        organization: "Nous choisissons l’exposition et le lieu de rendez-vous.",
        additionalInfo: "Nous vérifions ensemble l’accès et les horaires.",
        section: "Activités",
        category: "Événements",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — ATELIERS : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "leonardo",
        pseudo: "Leonardo",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Découvrons le dessin",
        addDescription: "Je propose un atelier pour dessiner sans pression.",
        availability: "Le jeudi matin",
        location: "Lyon 5e",
        whenDetails: "Chaque jeudi, de 10 h à 11 h 30.",
        organization: "Petit groupe à la maison de quartier.",
        additionalInfo: "Atelier gratuit. Papier et crayons fournis.",
        section: "Activités",
        category: "Ateliers",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "fatou",
        pseudo: "Fatou",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un atelier de collage",
        addDescription: "Je propose de créer une carte avec des images découpées.",
        availability: "Le lundi après-midi",
        location: "Lyon 3e",
        whenDetails: "Le lundi, de 14 h à 15 h 30.",
        organization: "Nous créons en petit groupe à la maison de quartier.",
        additionalInfo: "Atelier gratuit. Papier, colle et images fournis.",
        section: "Activités",
        category: "Ateliers",
        listingType: "Offre"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — À LA UNE : 2 OFFRES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un moment de lecture",
        addDescription: "Je propose de partager un moment de lecture.",
        availability: "Le mercredi après-midi",
        location: "Lyon",
        whenDetails: "Chaque mercredi, de 15 h à 16 h.",
        organization: "Nous lisons en petit groupe de deux ou trois.",
        additionalInfo: "Apportez un livre que vous aimez.",
        section: "Activités",
        category: "À la une",
        listingType: "Offre"
    ),

    Classifieds(
        avatarIcon: "djibril",
        pseudo: "Djibril",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Une rencontre entre voisins",
        addDescription: "Je propose un moment pour faire connaissance cette semaine.",
        availability: "Le vendredi après-midi",
        location: "Lyon 2e",
        whenDetails: "Ce vendredi, de 15 h à 16 h.",
        organization: "Retrouvons-nous à la maison de quartier.",
        additionalInfo: "Rencontre gratuite en petit groupe.",
        section: "Activités",
        category: "À la une",
        listingType: "Offre"
    ),

    // ============================================================
    // PARCOURS ORANGE — L’UTILISATEUR SOUHAITE AIDER
    // 26 DEMANDES DE SENIORS, PROCHES ET ASSOCIATIONS
    //
    // Les associations recherchent des bénévoles.
    // Leurs portraits représentent leurs référents.
    // ============================================================

    // ------------------------------------------------------------
    // SERVICES — COURSES : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un coup de main pour mes courses",
        addDescription: "Je cherche une personne pour m’aider à porter mes sacs.",
        availability: "Le lundi matin",
        location: "Lyon 6e",
        whenDetails: "Chaque lundi, vers 10 h.",
        organization: "Nous allons au magasin près de chez moi.",
        additionalInfo: "Je prépare la liste et règle mes achats.",
        section: "Services",
        category: "Courses",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Au marché avec moi",
        addDescription: "Je cherche de la compagnie pour aller au marché.",
        availability: "Le mercredi matin",
        location: "Lyon 3e",
        whenDetails: "Le mercredi, de 9 h à 10 h 30.",
        organization: "Rendez-vous devant mon immeuble pour y aller à pied.",
        additionalInfo: "Je prépare ma liste et règle mes achats.",
        section: "Services",
        category: "Courses",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // SERVICES — TRANSPORTS : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "maria",
        pseudo: "Association Entr’Aide",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un bénévole pour accompagner",
        addDescription: "Nous cherchons un bénévole pour accompagner un senior.",
        availability: "Le mardi matin",
        location: "Villeurbanne",
        whenDetails: "Le mardi, selon les rendez-vous prévus.",
        organization: "Notre référente organise le trajet avec vous.",
        additionalInfo: "Contactez-nous avant toute intervention.",
        section: "Services",
        category: "Transports",
        listingType: "Demande",
        isAssociation: true
    ),

    Classifieds(
        avatarIcon: "jacky",
        pseudo: "Jacky",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Aller à mon rendez-vous",
        addDescription: "Je cherche un accompagnement pour un rendez-vous de quartier.",
        availability: "Le jeudi matin",
        location: "Lyon 4e",
        whenDetails: "Un jeudi matin, horaire à confirmer ensemble.",
        organization: "Nous organisons le trajet aller et retour par message.",
        additionalInfo: "Je peux monter seul dans une voiture.",
        section: "Services",
        category: "Transports",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE À LA MAISON : 2 DEMANDES
    // ------------------------------------------------------------

    // Demande publiée par une proche pour sa mère.
    Classifieds(
        avatarIcon: "fatou",
        pseudo: "Fatou",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un repas avec ma mère",
        addDescription: "Ma mère aimerait cuisiner avec une personne du quartier.",
        availability: "Le mercredi midi",
        location: "Lyon 3e",
        whenDetails: "Le mercredi, de 11 h à 13 h.",
        organization: "Avec son accord, je vous présente ma mère.",
        additionalInfo: "Elle choisit le menu et fournit les ingrédients.",
        section: "Services",
        category: "Aide à la maison",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un peu d’aide pour mes plantes",
        addDescription: "J’aimerais être aidée pour rempoter deux plantes.",
        availability: "Le samedi matin",
        location: "Lyon 3e",
        whenDetails: "Le samedi, de 10 h à 11 h.",
        organization: "Nous installons les plantes sur une table accessible.",
        additionalInfo: "Je fournis les pots et le terreau.",
        section: "Services",
        category: "Aide à la maison",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // SERVICES — PAPIERS ET DÉMARCHES : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Comprendre un courrier",
        addDescription: "J’aimerais relire un courrier administratif avec quelqu’un.",
        availability: "Le jeudi après-midi",
        location: "Lyon",
        whenDetails: "Ce jeudi, entre 14 h et 16 h.",
        organization: "Nous le lisons à la maison de quartier.",
        additionalInfo: "Je garde mes documents et décide des démarches.",
        section: "Services",
        category: "Papiers et démarches",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "marius",
        pseudo: "Marius",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Classer mes documents",
        addDescription: "Je cherche une personne pour m’aider à trier mes courriers.",
        availability: "Le lundi matin",
        location: "Lyon 4e",
        whenDetails: "Le lundi, de 10 h à 11 h.",
        organization: "Nous classons les papiers ensemble à mon domicile.",
        additionalInfo: "Je conserve tous mes documents originaux.",
        section: "Services",
        category: "Papiers et démarches",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE NUMÉRIQUE : 3 DEMANDES
    // ------------------------------------------------------------

    // Demande publiée par un proche pour son père.
    Classifieds(
        avatarIcon: "anthony",
        pseudo: "Anthony",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Le téléphone de mon père",
        addDescription: "Mon père souhaite apprendre à envoyer des photos.",
        availability: "Le samedi matin",
        location: "Villeurbanne",
        whenDetails: "Le samedi, une séance de 45 minutes.",
        organization: "Avec son accord, je serai présent au début.",
        additionalInfo: "Il préfère avancer doucement sur son téléphone.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "jacky",
        pseudo: "Jacky",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Passer un appel vidéo",
        addDescription: "J’aimerais voir mes petits-enfants en appel vidéo.",
        availability: "Le mercredi après-midi",
        location: "Lyon 4e",
        whenDetails: "Le mercredi, entre 15 h et 17 h.",
        organization: "Une séance chez moi, sur ma tablette.",
        additionalInfo: "La tablette est chargée et connectée à Internet.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "kenza",
        pseudo: "Association Déclic",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Aidez des seniors avec leur mobile",
        addDescription: "Nous cherchons un bénévole pour notre atelier numérique.",
        availability: "Le samedi matin",
        location: "Lyon 7e",
        whenDetails: "Le samedi, de 10 h à 12 h.",
        organization: "Vous accompagnez un petit groupe avec notre équipe.",
        additionalInfo: "Patience et gestes simples. Accueil des bénévoles prévu.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — BRICOLAGE : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "marius",
        pseudo: "Marius",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une poignée à resserrer",
        addDescription: "La poignée de mon placard bouge. Pouvez-vous m’aider ?",
        availability: "Le vendredi après-midi",
        location: "Villeurbanne",
        whenDetails: "Le vendredi, entre 14 h et 17 h.",
        organization: "Je peux envoyer une photo avant votre venue.",
        additionalInfo: "Le placard est accessible sans escabeau.",
        section: "Services",
        category: "Bricolage",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "jacky",
        pseudo: "Jacky",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Assembler une petite table",
        addDescription: "Je cherche quelqu’un pour m’aider à monter une table basse.",
        availability: "Le samedi après-midi",
        location: "Lyon 4e",
        whenDetails: "Le samedi, de 14 h à 16 h.",
        organization: "Le meuble et la notice sont déjà chez moi.",
        additionalInfo: "Sans perçage. J’ai les outils nécessaires.",
        section: "Services",
        category: "Bricolage",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — CAFÉ : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Quelqu’un pour un café ?",
        addDescription: "J’aimerais rencontrer une personne pour discuter.",
        availability: "Le mardi après-midi",
        location: "Lyon",
        whenDetails: "Le mardi, de 15 h à 16 h.",
        organization: "Retrouvons-nous dans un café du quartier.",
        additionalInfo: "Chacun règle sa consommation.",
        section: "Activités",
        category: "Café",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "jacky",
        pseudo: "Jacky",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Une pause et une discussion",
        addDescription: "Je cherche un voisin pour discuter autour d’une boisson.",
        availability: "Le mercredi après-midi",
        location: "Lyon 4e",
        whenDetails: "Le mercredi, de 15 h à 16 h.",
        organization: "Nous choisissons un café calme dans le quartier.",
        additionalInfo: "Chacun règle sa consommation.",
        section: "Activités",
        category: "Café",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — JEUX : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "jacky",
        pseudo: "Jacky",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Des partenaires de belote",
        addDescription: "Je cherche des voisins pour jouer aux cartes.",
        availability: "Le jeudi après-midi",
        location: "Lyon 4e",
        whenDetails: "Chaque jeudi, de 14 h à 16 h.",
        organization: "Nous pouvons jouer à la maison de quartier.",
        additionalInfo: "J’apporte les cartes. Débutants bienvenus.",
        section: "Activités",
        category: "Jeux",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Reprendre les échecs",
        addDescription: "Je cherche un partenaire patient pour rejouer aux échecs.",
        availability: "Le mardi après-midi",
        location: "Villeurbanne",
        whenDetails: "Le mardi, de 14 h à 15 h 30.",
        organization: "Nous pouvons jouer à la médiathèque.",
        additionalInfo: "J’apporte mon échiquier. Tous niveaux bienvenus.",
        section: "Activités",
        category: "Jeux",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — SORTIES : 3 DEMANDES
    // ------------------------------------------------------------

    // Demande publiée par une proche pour sa mère.
    Classifieds(
        avatarIcon: "julie",
        pseudo: "Julie",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une balade avec ma mère",
        addDescription: "Ma mère aimerait retrouver le plaisir de se promener.",
        availability: "Le dimanche matin",
        location: "Lyon 5e",
        whenDetails: "Le dimanche, vers 10 h.",
        organization: "Avec son accord, nous organisons une rencontre.",
        additionalInfo: "Petite promenade sur terrain plat, avec pauses.",
        section: "Activités",
        category: "Sorties",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une visite au musée",
        addDescription: "Je cherche une personne pour découvrir une exposition.",
        availability: "Le samedi après-midi",
        location: "Lyon 2e",
        whenDetails: "Un samedi, de 14 h à 16 h.",
        organization: "Nous choisissons le musée ensemble.",
        additionalInfo: "Chacun règle son entrée si elle est payante.",
        section: "Activités",
        category: "Sorties",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "djibril",
        pseudo: "Association Les Liens",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Une promenade avec nos adhérents",
        addDescription: "Nous cherchons des bénévoles pour une sortie au parc.",
        availability: "Le vendredi matin",
        location: "Lyon 6e",
        whenDetails: "Le vendredi, de 10 h à 11 h 30.",
        organization: "Vous accompagnez le groupe avec notre référent.",
        additionalInfo: "Parcours tranquille avec pauses. Rencontre préalable.",
        section: "Activités",
        category: "Sorties",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — ÉVÉNEMENTS : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "marius",
        pseudo: "Marius",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Un événement à partager",
        addDescription: "Je cherche un voisin pour aller à une fête de quartier.",
        availability: "Selon le programme",
        location: "Villeurbanne",
        whenDetails: "Date à choisir selon les événements proposés.",
        organization: "Nous nous retrouvons à l’entrée.",
        additionalInfo: "Je préfère un événement gratuit en journée.",
        section: "Activités",
        category: "Événements",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Une exposition à découvrir",
        addDescription: "J’aimerais être accompagné pour découvrir une exposition.",
        availability: "Le mercredi après-midi",
        location: "Villeurbanne",
        whenDetails: "Un mercredi, selon les horaires de l’exposition.",
        organization: "Nous choisissons ensemble une exposition gratuite.",
        additionalInfo: "Je préfère une visite courte avec des pauses.",
        section: "Activités",
        category: "Événements",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — ATELIERS : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Découvrir l’aquarelle",
        addDescription: "Je cherche un petit groupe pour apprendre à peindre.",
        availability: "Le jeudi matin",
        location: "Lyon",
        whenDetails: "Le jeudi, entre 10 h et 12 h.",
        organization: "Je peux rejoindre un atelier dans le quartier.",
        additionalInfo: "Je débute et ne possède pas encore de matériel.",
        section: "Activités",
        category: "Ateliers",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Essayer le dessin",
        addDescription: "Je cherche un atelier de dessin pour débutants.",
        availability: "Le mardi matin",
        location: "Villeurbanne",
        whenDetails: "Le mardi, entre 10 h et 12 h.",
        organization: "Je peux rejoindre un petit groupe près de chez moi.",
        additionalInfo: "Je cherche une initiation gratuite, matériel prêté.",
        section: "Activités",
        category: "Ateliers",
        listingType: "Demande"
    ),

    // ------------------------------------------------------------
    // ACTIVITÉS — À LA UNE : 2 DEMANDES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Alain",
        isIdVerified: true,
        isFavorite: false,
        addTitle: "Une activité cette semaine",
        addDescription: "J’aimerais rejoindre une rencontre près de chez moi.",
        availability: "En semaine",
        location: "Lyon 6e",
        whenDetails: "Cette semaine, en matinée ou l’après-midi.",
        organization: "Proposez-moi une activité par message.",
        additionalInfo: "Je préfère un petit groupe et une activité gratuite.",
        section: "Activités",
        category: "À la une",
        listingType: "Demande"
    ),

    Classifieds(
        avatarIcon: "giselle",
        pseudo: "Giselle",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Une rencontre cette semaine",
        addDescription: "J’aimerais rencontrer quelques voisins pour discuter.",
        availability: "Le vendredi après-midi",
        location: "Lyon 3e",
        whenDetails: "Ce vendredi, de 15 h à 16 h.",
        organization: "Proposez-moi un lieu calme et accessible par message.",
        additionalInfo: "Je préfère une rencontre gratuite en petit groupe.",
        section: "Activités",
        category: "À la une",
        listingType: "Demande"
    ),
    
    // ============================================================
    // PARCOURS VERT — OFFRES D’AIDE DES ASSOCIATIONS
    // ============================================================

    // ------------------------------------------------------------
    // SERVICES — COURSES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "maria",
        pseudo: "Association Liens",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Vos courses accompagnées",
        addDescription: "Un bénévole vous accompagne pour faire vos courses à votre rythme.",
        availability: "Le mardi matin",
        location: "Lyon 3e",
        whenDetails: "Chaque mardi, de 9 h à 11 h, sur réservation.",
        organization: "Notre référente vous met en relation avec un bénévole du quartier.",
        additionalInfo: "Accompagnement gratuit. Vos achats restent à votre charge.",
        section: "Services",
        category: "Courses",
        listingType: "Offre",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — TRANSPORTS
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "patrice",
        pseudo: "Association Relais",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un trajet accompagné",
        addDescription: "Nous proposons un accompagnement en voiture pour vos rendez-vous de proximité.",
        availability: "Le jeudi matin",
        location: "Villeurbanne",
        whenDetails: "Le jeudi, entre 9 h et 12 h.",
        organization: "Contactez notre référente pour préparer le départ et le retour.",
        additionalInfo: "Trajet gratuit à réserver trois jours avant. Sans transport médical.",
        section: "Services",
        category: "Transports",
        listingType: "Offre",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE À LA MAISON
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "fatou",
        pseudo: "Association Partage",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Cuisinons ensemble",
        addDescription: "Notre bénévole vous aide à préparer un repas simple et partage ce moment avec vous.",
        availability: "Le mercredi midi",
        location: "Lyon 7e",
        whenDetails: "Le mercredi, de 11 h à 13 h.",
        organization: "Nous choisissons ensemble une recette avant la visite.",
        additionalInfo: "Aide gratuite. Prévoyez les ingrédients et signalez vos allergies.",
        section: "Services",
        category: "Aide à la maison",
        listingType: "Offre",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — PAPIERS ET DÉMARCHES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "kenza",
        pseudo: "Association Repères",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Comprendre vos courriers",
        addDescription: "Nous vous aidons à lire vos courriers et à comprendre les étapes d’une démarche.",
        availability: "Le vendredi matin",
        location: "Lyon 2e",
        whenDetails: "Le vendredi, de 9 h à 12 h, sur rendez-vous.",
        organization: "Un bénévole vous reçoit dans notre local accessible.",
        additionalInfo: "Accueil gratuit. Vous conservez vos documents et prenez vos décisions.",
        section: "Services",
        category: "Papiers et démarches",
        listingType: "Offre",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE NUMÉRIQUE
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "anthony",
        pseudo: "Association Déclic",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Votre téléphone pas à pas",
        addDescription: "Apprenez avec un bénévole à envoyer un message ou à appeler vos proches en vidéo.",
        availability: "Le samedi matin",
        location: "Lyon 5e",
        whenDetails: "Le samedi, une séance individuelle de 45 minutes.",
        organization: "Apportez votre téléphone à notre permanence de quartier.",
        additionalInfo: "Séance gratuite. Téléphone chargé, mots de passe à garder pour vous.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Offre",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — BRICOLAGE
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "djibril",
        pseudo: "Association Coup Main",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un petit bricolage chez vous",
        addDescription: "Un bénévole peut vous aider à resserrer une poignée ou à monter un petit meuble.",
        availability: "Le lundi après-midi",
        location: "Lyon 8e",
        whenDetails: "Le lundi, entre 14 h et 17 h, sur rendez-vous.",
        organization: "Décrivez votre besoin pour que nous préparions le matériel.",
        additionalInfo: "Aide gratuite. Sans travaux électriques, de plomberie ou en hauteur.",
        section: "Services",
        category: "Bricolage",
        listingType: "Offre",
        isAssociation: true
    ),

    // ============================================================
    // PARCOURS ORANGE — ASSOCIATIONS CHERCHANT DES BÉNÉVOLES
    // ============================================================

    // ------------------------------------------------------------
    // SERVICES — COURSES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "mariam",
        pseudo: "Association Liens",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Accompagner au marché",
        addDescription: "Nous cherchons un bénévole pour accompagner une senior au marché de son quartier.",
        availability: "Le vendredi matin",
        location: "Lyon 7e",
        whenDetails: "Le vendredi, de 9 h à 11 h, deux fois par mois.",
        organization: "Notre référente organise une première rencontre avec vous.",
        additionalInfo: "Mission bénévole à pied. La personne règle elle-même ses achats.",
        section: "Services",
        category: "Courses",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — TRANSPORTS
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "alain",
        pseudo: "Association Relais",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un conducteur bénévole",
        addDescription: "Nous cherchons une personne pour conduire un senior à ses rendez-vous de proximité.",
        availability: "Le mardi après-midi",
        location: "Villeurbanne",
        whenDetails: "Un ou deux mardis par mois, selon vos disponibilités.",
        organization: "Notre référente confirme chaque trajet et organise le retour.",
        additionalInfo: "Permis et assurance adaptés à vérifier avec nous avant la mission.",
        section: "Services",
        category: "Transports",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE À LA MAISON
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "julie",
        pseudo: "Association Partage",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Partager un moment en cuisine",
        addDescription: "Nous cherchons un bénévole pour préparer un repas avec une personne âgée vivant seule.",
        availability: "Le jeudi midi",
        location: "Lyon 3e",
        whenDetails: "Deux jeudis par mois, de 11 h à 13 h.",
        organization: "Une première visite est organisée avec notre référente.",
        additionalInfo: "Mission de convivialité, sans soins ni aide à la toilette.",
        section: "Services",
        category: "Aide à la maison",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — PAPIERS ET DÉMARCHES
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "maria",
        pseudo: "Association Repères",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Aider à comprendre un courrier",
        addDescription: "Nous recherchons un bénévole patient pour aider des seniors à lire leurs courriers.",
        availability: "Le mercredi matin",
        location: "Lyon 2e",
        whenDetails: "Une permanence par mois, de 10 h à 12 h.",
        organization: "Vous intervenez au local avec un membre de notre équipe.",
        additionalInfo: "Confidentialité indispensable. Vous ne signez aucun document à leur place.",
        section: "Services",
        category: "Papiers et démarches",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — AIDE NUMÉRIQUE
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "leonardo",
        pseudo: "Association Déclic",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Transmettre vos astuces mobiles",
        addDescription: "Nous cherchons un bénévole pour aider des seniors à utiliser leur téléphone.",
        availability: "Le samedi après-midi",
        location: "Lyon 5e",
        whenDetails: "Un samedi par mois, de 14 h à 16 h.",
        organization: "Notre équipe prépare avec vous des exercices simples.",
        additionalInfo: "Patience et écoute appréciées. Ne demandez jamais les mots de passe.",
        section: "Services",
        category: "Aide numérique",
        listingType: "Demande",
        isAssociation: true
    ),

    // ------------------------------------------------------------
    // SERVICES — BRICOLAGE
    // ------------------------------------------------------------

    Classifieds(
        avatarIcon: "fabrice",
        pseudo: "Association Coup Main",
        isIdVerified: false,
        isFavorite: false,
        addTitle: "Un bricoleur solidaire",
        addDescription: "Nous cherchons un bénévole pour de petites réparations chez des seniors du quartier.",
        availability: "Selon vos disponibilités",
        location: "Lyon 8e",
        whenDetails: "Une intervention d’une heure, une à deux fois par mois.",
        organization: "Notre référente évalue la demande avant de vous proposer une visite.",
        additionalInfo: "Sans travaux électriques, de plomberie ou en hauteur. Matériel prévu ensemble.",
        section: "Services",
        category: "Bricolage",
        listingType: "Demande",
        isAssociation: true
    )
]
