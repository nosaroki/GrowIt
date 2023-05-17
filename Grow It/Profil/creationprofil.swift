//
//  creationprofil.swift
//  cuisine
//
//  Created by Apprenant 68 on 25/04/2023.
//

import SwiftUI


struct creationprofil: View {
    @State private var Ecrireici = ""
    @State private var Ecrireici1 = ""
    @State private var Ecrireici2 = ""
    @State private var Ecrireici3 = ""
    @State private var Ecrireici4 = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("beige")
                    .edgesIgnoringSafeArea(.top)
            ScrollView{
               
                    
                    VStack {
                        Group {
                            Text("Quel est votre profil ?")
                                .font(.custom("Palatino", size: 30))
                                .foregroundColor(Color("chocolat"))
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 280, height: 2)
                                .padding(.top, -10)
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("lightGreen"))
                                    .frame(width: 350, height: 50)
                                    .padding()
                                Text("Quel est votre prénom ?")
                                    .foregroundColor(Color("chocolat"))
                                
                            }
                            
                            ZStack{
                                
                                Image("compartimentFondBlanc")
                                    .resizable()
                                    .frame(width:350, height:75)
                                    .overlay {
                                        TextField("Ecrire ici", text: $Ecrireici1)
                                            .font(.body)
//                                            .foregroundColor(Color.gray)
                                            .foregroundColor(Color("darkGreen"))
                                            .multilineTextAlignment(.center)
                                    }
                            }
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("lightGreen"))
                                    .frame(width: 350, height: 50)
                                    .padding()
                                Text("Quel est la surface de\r votre habitation (m2) ?")
                                    .foregroundColor(Color("chocolat"))
                            }
                            
                        }
                        
                        Group{
                            
                            ZStack{
                                Image("compartimentFondBlanc")
                                    .resizable()
                                    .frame(width:350, height:75)
                                    .overlay {
                                        TextField("Ecrire ici", text: $Ecrireici2)
                                            .font(.body)
//                                            .foregroundColor(Color.gray)
                                            .foregroundColor(Color("darkGreen"))
                                            .multilineTextAlignment(.center)
                                    }
                                
                            }
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("lightGreen"))
                                    .frame(width: 350, height: 50)
                                    .padding()
                                Text("Combien de temps par jour \rsouhaitez-vous consacrer au jardinage ?")
                                    .foregroundColor(Color("chocolat"))
                                    .multilineTextAlignment(.center)
                                
                            }
                            
                            ZStack{
                                
                                Image("compartimentFondBlanc")
                                    .resizable()
                                    .frame(width:350, height:75)
                                    .overlay {
                                        TextField("Ecrire ici", text: $Ecrireici3)
                                            .font(.body)
                                            .foregroundColor(Color("darkGreen"))
                                            .multilineTextAlignment(.center)
                                    }
                            }
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("lightGreen"))
                                    .frame(width: 350, height: 50)
                                    .padding()
                                Text("Dans quelle région habitez-vous? ")
                                    .foregroundColor(Color("chocolat"))
                                
                            }
                        }
                        
                        Group {
                            
                            ZStack{
                                Image("compartimentFondBlanc")
                                    .resizable()
                                    .frame(width:350, height:75)
                                    .overlay {
                                        TextField("Ecrire ici", text: $Ecrireici4)
                                            .font(.body)
                                            .foregroundColor(Color("darkGreen"))
                                            .multilineTextAlignment(.center)
                                    }
                            }
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("lightGreen"))
                                    .frame(width: 350, height: 50)
                                    .padding()
                                Text("Quel est votre taux \r d'ensoleillement (exposition) ?")
                                    .foregroundColor(Color("chocolat"))
                                    .multilineTextAlignment(.center)
                                
                            }
                            
                            HStack {
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Image(systemName: "sun.max.fill")
                                        .foregroundColor(Color.orange)
                                        .font(.system(size: 30, weight: .ultraLight))
                                    
                                }
                                Spacer()
                                
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "sun.max.fill")
                                        .foregroundColor(Color.orange)
                                        .font(.system(size: 40, weight: .light))
                                }
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "sun.max.fill")
                                        .foregroundColor(Color.orange)
                                        .font(.system(size: 50, weight: .bold))
                                }
                                Spacer()
                            }
                            .padding(.bottom, 20)
                            
                            
                            
                        }
                        
                        ZStack {
                            NavigationLink(destination: {
                                VosHerbes()
                            }, label: {
                                Text("Découvrez vos herbes")
                            })
    //                        Button("Découvrez vos herbes") {
    //                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
    //                        }
                            .bold()
                            .padding()
                            .padding(.horizontal, 80)
                            .background(Color("darkGreen"))
                            .cornerRadius(20)
                            .foregroundColor(Color("lightGreen"))
                            .multilineTextAlignment(.center)
                        }
                        .padding(.bottom, 50)
                    }
                }
                
                
            }
        }
        
    }
    
    
    
    struct creationprofil_Previews: PreviewProvider {
        static var previews: some View {
            creationprofil()
        }
    }
}

