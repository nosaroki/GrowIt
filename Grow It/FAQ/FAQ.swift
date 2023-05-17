//
//  ContentView.swift
//  Hbbreak
//
//  Created by apprenant 89 on 27/04/2023.
//

import SwiftUI

struct FAQ: View {
   
    let color: Color = Color("beige")
    
    var body: some View {
        
          NavigationStack {
        
        ZStack {
            color.edgesIgnoringSafeArea(.top)
            
//            ScrollView {
    
                    ZStack {
                        VStack(alignment: .center) {
                            
                                    Text("Questions D'herbain")
                                        .font(.custom("Palatino", size: 30))
                                        .foregroundColor(Color("chocolat"))
                                        .padding(.top, 20)
                                    
                                    Rectangle()
                                        .foregroundColor(Color(.brown))
                                        .frame(width:275,height:2)
                                        .padding(.top, -10)
                            
                            Text("Catégories")
                                .font(.custom("gillsans", size: 25))
                                .fontWeight(.medium)
                                .foregroundColor(Color("chocolat"))
//                                .padding(.top, 20)
//                                .padding(.bottom, 0)
                          
                            HStack{
                                
                                NavigationLink(destination: UBPrendresoin()) {
                                    HStack {
                                        Image(systemName: "suit.fill")
                                            .foregroundColor(.white)
                                        Text("Prendre soin de vos herbes")
                                            .foregroundColor(Color("chocolat"))
                                    }
                                    
                                    .frame(width: 140,height:120)
                                    .padding()
                                    .background(Color("lightGreen"))
                                    .cornerRadius(10)
                                }
                                Button {
                                    
                                }
                            label: {
                                Image(systemName: "suit.fill")
                                    .foregroundColor(.white)
                                Text("Recyclage")
                                .foregroundColor(Color("chocolat"))                                        }
                            .frame(width: 140,height:120)
                            .padding()
                            .background(Color("lightGreen"))
                            .cornerRadius(10)
                                
                                
                            }
                            .fontWeight(.bold)
                            .padding()
                            .padding(.bottom, -25)
                            
                            NavigationLink(destination: UBEnvironnement()) {
                                HStack{
                                    
                                    Image(systemName: "suit.fill")
                                        .foregroundColor(.white)
                                    Text("Environnement")
                                        .foregroundColor(Color("chocolat"))
                                }
                                .frame(width: 140,height:120)
                                .padding()
                                .background(Color("lightGreen"))
                                .cornerRadius(10)
                                
                            
                                //                                NavLink ICI
                                NavigationLink(destination: UBTechnique()) {
                                    HStack {
                                        Image(systemName: "suit.fill")
                                            .foregroundColor(.white)
                                        Text("Technique")
                                            .foregroundColor(Color("chocolat"))
                                    }
                                    
                                    .frame(width: 140,height:120)
                                    .padding()
                                    .background(Color("lightGreen"))
                                    .cornerRadius(10)
                                    //                               FIN DU NAVLINK
                                }
                                
                                
                            }
                            .fontWeight(.bold)
                            .padding()
                            
                            
                            VStack (alignment: .center) {
                          Spacer()
                                Image("frise")
                            }
                            .padding()
//                            .padding(.top, 120)
                            
                            
                        }
                     }
//                    .padding(.top, 40)
                    
                
//            }
        }
      }
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
