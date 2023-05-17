//
//  creationcompte.swift
//  cuisine
//
//  Created by Apprenant 68 on 27/04/2023.
//

import SwiftUI

struct MonCompte: View {
    
    @State private var compte = "informations personnelles"
    @State private var firstName = ""
    @State private var outil = ""
    @State private var outil2 = ""
    @State private var outil3 = ""
    
    var body: some View {
        ZStack {
            Color("beige")
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Mon compte")
                    .font(.custom("Palatino", size: 30))
                    .foregroundColor(Color("chocolat"))
                Rectangle()
                    .foregroundColor(Color("chocolat"))
                    .frame(width: 170, height: 2)
                    .padding(.top, -10)
                Image(rosie.profilPic)
                Text("Rosie")
                    .font(.custom("gillsans", size: 30))
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .foregroundColor(Color("chocolat"))
                    .padding(.bottom, 20)
                
                VStack {
                    HStack {
                        Picker(selection: $compte, label: Text("profil")) {
                            
                            Text("Informations").tag("informations personnelles")
                            Text("Chez moi")
                                .tag("caractéristiques intérieur")
                            Text("Matériel").tag("Matériel à disposition")
                        }
                        
                        .pickerStyle(.segmented)
                        .background(Color("lightGreen"))
                        
                    }
                    if compte == "informations personnelles" {
                        
                        HStack {
                            VStack(alignment: .leading) {
                                
                                Group {
                                    
                                    Text ("Prénom")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Form {
                                        TextField("Prénom", text: $firstName)
                                        
                                    }
                                    .padding(.top, -44.0)
                                    .scrollContentBackground(.hidden)
                                    Divider()
                                    
                                    Text ("Nom")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Text(rosie.profilSurname)
                                        .font(.subheadline)
                                        .foregroundColor(Color("darkGreen"))
                                    
                                    Divider()
                                    
                                    Text("Email")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Text(rosie.email)
                                        .font(.subheadline)
                                        .foregroundColor(Color("darkGreen"))
                                    
                                    Divider()
                                }
                                
                                Text("Âge")
                                    .font(.headline)
                                    .foregroundColor(Color("chocolat"))
                                Text("\(rosie.age)")
                                    .font(.subheadline)
                                    .foregroundColor(Color("darkGreen"))
                                
                                Divider()
                                
                                Text("Téléphone")
                                    .font(.headline)
                                    .foregroundColor(Color("chocolat"))
                                Text("\(rosie.telephone)")
                                    .font(.subheadline)
                                    .foregroundColor(Color("darkGreen"))
                                
                                Divider()
                                
                                Text("À propos de moi")
                                    .font(.headline)
                                    .foregroundColor(Color("chocolat"))
                                Text("\(rosie.presentation)")
                                    .font(.subheadline)
                                    .foregroundColor(Color("darkGreen"))
//                                Image("frise")
                            }
                        }
                    } else if compte == "caractéristiques intérieur" {
                        
                        HStack {
                            VStack(alignment: .leading) {
                                
                                Group {
                                    Text("Surface")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Text("\(rosie.area) m2")
                                        .font(.subheadline)
                                        .foregroundColor(Color("darkGreen"))
                                    Divider()
                                    
                                    Text("Ensoleillement")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Image(systemName:"sun.max.fill")
                                        .font(.system(size: 50, weight: .bold))
                                        .foregroundColor(Color.orange)
                                    Divider()
                                    Text("Temps disponible par jour (min)")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Text("\(rosie.time)")
                                        .font(.subheadline)
                                        .foregroundColor(Color("darkGreen"))
                                    Divider()
                                }
                                
                                Group {
                                    Text("Région")
                                        .font(.headline)
                                        .foregroundColor(Color("chocolat"))
                                    Text("\(rosie.region)")
                                        .font(.subheadline)
                                        .foregroundColor(Color("darkGreen"))
                                    
                                    Divider()
                                    Spacer()
//                                    Image("frise")
                                    
                                }
                                
                            }
                        }
                        
                        
                    } else {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Matériel à disposition")
                                    .font(.headline)
                                    .foregroundColor(Color("chocolat"))
                                
                                HStack{
                                    Form {
                                        TextField("outil", text: $outil)
                                    }
                                    .scrollContentBackground(.hidden)
                                    
                                    Image("shovel")
                                }
                                HStack {
                                    Form {
                                        TextField("outil", text: $outil2)
                                    }
                                    .scrollContentBackground(.hidden)
                                    Image("shovel")
                                }
                                HStack{
                                    Form{
                                        TextField("outil", text: $outil3)
                                    }
                                    .scrollContentBackground(.hidden)
                                    Image("shovel")
                                }
                            }
                            
                            
                        }
//                        Image("frise")
                    }
                    Spacer()
                    
                }
                Image("frise")

                
            }
            
            .padding()
        }
    }
    
}


struct creationcompte_Previews: PreviewProvider {
    static var previews: some View {
        MonCompte()
    }
}

