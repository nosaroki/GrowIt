//
//  Grow_ItApp.swift
//  Grow It
// Fichier permettant de lancer l'application
// NE SURTOUT PAS SUPPRIMER ！
//
//  Created by Apprenant 76 on 24/04/2023.
//

import SwiftUI

@main
struct Grow_ItApp: App {
    @State private var onBoarding = false
    var body: some Scene {
        WindowGroup {
            TabPanel(onBoardingDone: $onBoarding)
        }
    }
}
