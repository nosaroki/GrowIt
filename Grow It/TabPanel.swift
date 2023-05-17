////
////  TabPanel.swift
////  Appli
////
////  Created by Apprenant 93 on 07/05/2023.
////
//
import SwiftUI

struct TabPanel: View {
    @Binding var onBoardingDone: Bool
    var body: some View {
        if !onBoardingDone {
            OnBoardingTotal(onBoardingDone: $onBoardingDone)
        } else {
            TabView {
             CataloguePageA()
                .tabItem{
                    Label("Catalogue", systemImage:"books.vertical.fill")
                }
                creationprofil()  //Change to Plantons
                    .tabItem{
                        Label("Plantons", systemImage:"camera.macro.circle")
                    }
                MapUserView()  //Change to Map
                    .tabItem{
                        Label("Communauté", systemImage:"paperplane.fill")
                    }
                FAQ() // Change to FAQ
                    .tabItem{
                        Label("FAQ", systemImage:"text.bubble")
                    }
                MonCompte() // Change to Mon Compte
                    .tabItem{
                        Label("Mon Compte", systemImage:"person.fill")
                    }
            }
            .tint(Color("darkGreen"))
        }
    }
}

struct TabPanel_Previews: PreviewProvider {
    static var previews: some View {
        TabPanel(onBoardingDone: .constant(true))
    }
}
