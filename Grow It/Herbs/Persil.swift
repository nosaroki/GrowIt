//
//  Persil.swift
//  Grow It
//
//  Created by Apprenant 76 on 11/05/2023.
//

import SwiftUI

struct Persil: View {
    
    @State private var fullText: String = "Écrivez vos commentaires ici"
    
    var body: some View {
        
        ZStack  {
            Color("beige")
                .edgesIgnoringSafeArea(.top)
            ScrollView {
                
                VStack {
                    
                    Image(persil.image)
                        .resizable()
                        .frame(height: 150.0)
                        .position(x: 207, y: -24)
                    
                    Text(persil.name)
                        .font(.custom("Palatino", size: 25))
                        .foregroundColor(Color("darkGreen"))
                        .padding(.top, -45)
                    HStack {
                        Spacer()
                        Group{
                            Image(persil.sun.0)
                            Image(persil.sun.0)
                            Image(persil.sun.0)
                        }
                        Spacer()
                        Group{
                            Image(persil.water.0)
                            Image(persil.water.0)
                            Image(persil.water.1)
                        }
                        Spacer()
                        Group {
                            Image(persil.tools.0)
                            Image(persil.tools.1)
                            Image(persil.tools.1)
                        }
                        Spacer()
                    }
                    .frame(width: 393.0, height: 55)
                    .background(.white)
                    .padding(.bottom)
                    
                    HStack {
                        VStack (alignment: .leading){
                            
                            Text("Descriptif de l'herbe aromatique")
                                .font(.custom("Palatino", size: 22))
                                .foregroundColor(Color("darkGreen"))
                                .padding(-3)
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 310.0, height: 1)
                                .padding(.bottom, 3)
                            Text(persil.description)
                                .font(.custom("gillsans", size: 18))
                                .foregroundColor(Color("chocolat"))
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 20)
                        }
                        .padding(.leading, 15)
                        Spacer()
                    }
                    
                    HStack {
                        VStack (alignment: .leading){
                            
                            Text("Comment la planter ?")
                                .font(.custom("Palatino", size: 22))
                                .foregroundColor(Color("darkGreen"))
                                .padding(-3)
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 205.0, height: 1)
                                .padding(.bottom, 3)
                            Text(persil.howTo)
                                .font(.custom("gillsans", size: 18))
                                .foregroundColor(Color("chocolat"))
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 20)
                            
                            
                        }
                        .padding(.leading, 15)
                        Spacer()
                    }
                    
                    HStack {
                        VStack (alignment: .leading){
                            
                            Text("Ses bienfaits")
                                .font(.custom("Palatino", size: 22))
                                .foregroundColor(Color("darkGreen"))
                                .padding(-3)
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 120.0, height: 1)
                                .padding(.bottom, 3)
                            Text(persil.benefits)
                                .font(.custom("gillsans", size: 18))
                                .foregroundColor(Color("chocolat"))
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 20)
                            
                        }
                        .padding(.leading, 15)
                        Spacer()
                    }
                    
                    HStack {
                        VStack (alignment: .leading){
                            
                            Text("Astuces et Conseils")
                                .font(.custom("Palatino", size: 22))
                                .foregroundColor(Color("darkGreen"))
                                .padding(-3)
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 185.0, height: 1)
                                .padding(.bottom, 3)
                            Text(persil.tips)
                                .font(.custom("gillsans", size: 18))
                                .foregroundColor(Color("chocolat"))
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 20)
                            
                        }
                        .padding(.leading, 15)
                        Spacer()
                    }
                    
                    HStack {
                        VStack (alignment: .leading){
                            
                            Text("Avec quoi l'associer ?")
                                .font(.custom("Palatino", size: 22))
                                .foregroundColor(Color("darkGreen"))
                                .padding(-3)
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 200.0, height: 1)
                                .padding(.bottom, 3)
                            Text(persil.pair)
                                .font(.custom("gillsans", size: 18))
                                .foregroundColor(Color("chocolat"))
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 20)
                            
                            
                        }
                        .padding(.leading, 15)
                        Spacer()
                    }
                    
                    HStack {
                        VStack (alignment: .leading){
                            
                            Text("Journal de bord")
                                .font(.custom("Palatino", size: 22))
                                .foregroundColor(Color("darkGreen"))
                                .padding(-3)
                                .padding(.leading, 15)
                            Rectangle()
                                .foregroundColor(Color("chocolat"))
                                .frame(width: 150, height: 1)
                                .padding(.bottom, 20)
                                .padding(.leading, 15)
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color("darkGreen"), lineWidth: 1)
                                    .frame(width: 390, height: 150)
                                    .background(Color.white)
                                    .overlay {
                                        TextEditor(text: $fullText)
                                            .padding()
                                        
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Persil_Previews: PreviewProvider {
    static var previews: some View {
        Persil()
    }
}
