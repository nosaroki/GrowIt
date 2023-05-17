//
//  HelloCanva.swift
//  Grow It
//
//  Created by Apprenant 76 on 24/04/2023.
//

import SwiftUI



struct BasilicGV: View {
    
    @State private var fullText: String = "Écrivez vos commentaires ici"
    
    
    var body: some View {
        
        ZStack  {
            Color("beige")
                .edgesIgnoringSafeArea(.top)
        ScrollView {

          
            VStack {
                Image(basilicGV.image)
                    .resizable()
                    .frame(height: 150.0)
                    .position(x: 207, y: -24)
                
                Text(basilicGV.name)
                    .font(.custom("Palatino", size: 25))
                    .foregroundColor(Color("darkGreen"))
                    .padding(.top, -45)
                HStack {
                    Spacer()
                    Group{
                        Image(basilicGV.sun.0)
                        Image(basilicGV.sun.1)
                        Image(basilicGV.sun.1)
                        
                    }
                    Spacer()
                    Group{
                        Image(basilicGV.water.0)
                        Image(basilicGV.water.0)
                        Image(basilicGV.water.1)
                    }
                    Spacer()
                    Group {
                        Image(basilicGV.tools.0)
                        Image(basilicGV.tools.1)
                        Image(basilicGV.tools.1)
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
                        Text(basilicGV.description)
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
                        Text(basilicGV.howTo)
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
                        Text(basilicGV.benefits)
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
                        Text(basilicGV.tips)
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
                        Text(basilicGV.pair)
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


struct BasilicGV_Previews: PreviewProvider {
    static var previews: some View {
        BasilicGV()
    }
}

//    .font(.custom("gillsans", size: 40))
