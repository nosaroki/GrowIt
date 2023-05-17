//
//  Profil.swift
//  Grow It
//
//  Created by Apprenant 76 on 28/04/2023.
//

import Foundation
import MapKit

struct  Profil: Identifiable {
    
    var id = UUID()
    // Infomations personnelles
    
    var profilPic: String
    var profilName: String
    var profilSurname: String
    var presentation: String
    var age: Int
    var email: String
    var location: CLLocationCoordinate2D
    var wants: String
    var gives: String
    var telephone: String
    
    // Informations appartement
    var area : Int
    var sunshine: String
    var time: Int
    var region: String
    
    // Informations matériaux
    
    var homeTools: [String]
}

let georges = Profil(profilPic: "georgesContact", profilName: "Georges", profilSurname: "Georges", presentation: "Je plante des herbes aromatiques depuis petit et je suis toujours en recherche de nouvelles espèces", age: 53, email: "georges@leplanteur.fr", location: CLLocationCoordinate2D(latitude: 48.856, longitude: 2.324), wants: "Je cherche de l'ail 🧄", gives:"Je donne du basilic 🌱", telephone: "0612345678", area: 60,  sunshine: "sun", time: 5, region: "Paris", homeTools: [""])

let rosie = Profil(profilPic: "rosieContact", profilName: "Rosie", profilSurname: "LeCat", presentation: "J'adore l'herbe à chat, c'est toute ma vie", age: 35, email: "rosie@lechat.fr", location: CLLocationCoordinate2D(latitude: 48.872, longitude: 2.378), wants: "Je cherche de l'herbe à chat", gives:"Je donne de la citronnelle", telephone: "0612345678", area: 250,  sunshine: "sun", time: 3, region: "Montreuil", homeTools: [""] )

let charlie = Profil(profilPic: "charlieContact", profilName: "Charlie", profilSurname: "Charlie", presentation: "Make eat, grow eat, eat it!", age: 27, email: "charlie@funny.fr", location: CLLocationCoordinate2D(latitude: 48.881, longitude: 2.310), wants: "Je cherche du thym", gives:"Je donne du Basilic Grand Vert", telephone: "0612345678", area: 38, sunshine: "sun", time: 2, region: "Paris", homeTools: [""])

let elmo = Profil(profilPic: "elmoContact", profilName: "Elmo", profilSurname: "Elmo", presentation: "Nom nom nom", age: 66, email: "elmo@miam.fr", location: CLLocationCoordinate2D(latitude: 48.866, longitude: 2.344), wants: "Je cherche de l'origan", gives:"Je donne du persil", telephone: "0612345678", area: 18, sunshine: "sun", time: 1, region: "Paris", homeTools: [""])

let jinx = Profil(profilPic: "jinxContact", profilName: "Jinx", profilSurname: "Jinx", presentation: "Let's aromate", age: 24, email: "jinx@lol.fr", location: CLLocationCoordinate2D(latitude: 48.843, longitude: 2.352), wants: "Je cherche du romarin", gives:"Je donne de la coriandre", telephone: "0612345678", area: 31, sunshine: "sun", time: 4, region: "Paris", homeTools: [""])

var userArray = [
    georges, rosie, charlie, elmo, jinx
]
