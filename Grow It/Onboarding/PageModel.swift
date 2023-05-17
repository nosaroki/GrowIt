//
//  PageModel.swift
//  Appli
//
//  Created by Apprenant 93 on 12/05/2023.
//

import Foundation
struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "Bienvenue à toi \nAromatic Lover!", imageUrl:"plant", tag:0 )
    static var samplePages: [Page] = [
    Page(name: "Bienvenue à toi \nAromatic Lover!", description: "", imageUrl: "plant", tag: 0),
    Page(name: "", description: "L’application qui va t’aider \nà faire pousser des herbes aromatiques \nen milieu urbain", imageUrl: "Onboarding5", tag: 1),
    Page(name: "", description: "Si tu saisies tes informations \nconcernant ton habitation, tu obtiendras \nun catalogue personnalisé de \nce que tu peux cultiver chez toi", imageUrl: "Onboarding6", tag: 2),
    Page(name: "", description: "Si tu le souhaite tu peux \n créer ton profil afin de voir les personnes \nqui cultivent autour de toi.", imageUrl: "Onboarding8", tag: 3),
    Page(name: "", description: "N’hésite pas à consulter la FAQ \nsi tu as une question !", imageUrl: "Onboarding9", tag: 4)
    
    ]
}
