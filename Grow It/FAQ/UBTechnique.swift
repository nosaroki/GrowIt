//
//  Hbbreak,enfant.swift
//  Hbbreak
//
//  Created by apprenant 89 on 28/04/2023.
//

import SwiftUI

struct UBTechnique: View {
    
    var body: some View {
        
        let color: Color = Color("beige")
        
        ZStack{
            color.edgesIgnoringSafeArea(.top)
            VStack {
                ScrollView {
                    VStack {
                        
                        Text("Technique")
                            .font(.custom("Palatino", size: 30))
                            .foregroundColor(Color("chocolat"))
                            .padding(.top, 20)
                        
                        Rectangle()
                            .foregroundColor(Color(.brown))
                            .frame(width:140,height:2)
                            .padding(.top, -10)
                        
                        Text("Faut-il semer ses herbes aromatiques ?")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 210)
                            
                                .overlay {
                                    Text("Il est préférable de multiplier ses herbes plutôt que les semer car certaines espèces germent très difficilement comme que le basilic ou le romarin.\r\rEt d'autre comme l'aneth, la ciboulette ou le cresson qui quant à eux germes plus facilement.")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        Text("Comment choisir le bon terreau ?")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 150)
                            
                                .overlay {
                                    Text("Il est la base de vos plantes aromatiques. \r \rIl doit correspondre aux besoins de vos plantes et être bien perméable à l’eau. \rAfin d’éviter la formation d’humidité.")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        Text("Comment utiliser le semis ?")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 130)
                            
                                .overlay {
                                    Text("Il doit toujours être un peu humide. \r\rPour ce faire, arrosez les graines tous les 2 ou 3 jours à l’aide d’un vaporisateur.")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }.padding(.horizontal)
                        Image("frise")
                            .padding()
                        VStack{
                            Spacer()
                            Text("Vous ne trouvez pas la réponse à votre question ?\r\rContactez nous à\r\rContact@growit.com ")
                                .foregroundColor(Color("chocolat"))
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding(.bottom, 40)
                    }
                }
                
            }
            
        }
        
    }
}

struct Hbbreak_enfa_Previews: PreviewProvider {
    static var previews: some View {
        UBTechnique()
    }
}
