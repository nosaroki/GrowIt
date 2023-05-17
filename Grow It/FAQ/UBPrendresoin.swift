//
//  HbbreakConsei.swift
//  Hbbreak
//
//  Created by apprenant 89 on 11/05/2023.
//

import SwiftUI

struct UBPrendresoin: View {
    var body: some View {
        let color: Color = Color("beige")
        
        // @State private var compte = ""
        //@State private var selectedFlavor: Flavor = .chocolate
        
        ZStack{
            color
                .edgesIgnoringSafeArea(.top)
            VStack {
                ScrollView {
                    VStack {
                        
                        Text("Prendre soin de vos herbes")
                            .font(.custom("Palatino", size: 30))
                            .foregroundColor(Color("chocolat"))
                            .padding(.top, 20)
                        
                        Rectangle()
                            .foregroundColor(Color(.brown))
                            .frame(width:365,height:2)
                            .padding(.top, -10)
                        
                        
                        
                        Text(" De l'ancien au nouveau pot ")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 420)
                            
                                .overlay {
                                    Text("Sortez doucement la plante de son ancien pot et secouez la motte pour décompacter l’ancienne terre. Recherchez et éliminez les racines abîmées ou desséchées. \r \rCoupez les racines épaisses et trop longues afin de stimuler leurs croissance.\rCouvrez le fond du nouveau pot de gravier ou de fragments de terre cuite, afin de retenir la terre au niveau du trou d’évacuation. \r \rCette opération permet également d’éviter l’humidité stagnante et la pourriture racinaire. \rÉtalez ensuite un peu de terreau au fond du nouveau pot. ")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        
                        
                        
                        Text(" Mise en place de la plante ")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 290)
                            
                                .overlay {
                                    Text("Installez précautionneusement la plante dans son nouveau pot en veillant à bien la centrer. Elle dispose ainsi de suffisamment de place pour pousser de tous les côtés.\r \rRemplissez le pot avec un nouveau terreau. Veillez à ce que la terre soit adaptée aux besoins de la plante. \r\rPar exemple les cactées et les tomates ne demandent pas la même terre. ")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        
                        
                        
                        Text("L'arrosage ")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 260)
                            
                                .overlay {
                                    Text("Remplissez de terre jusqu’à environ 2 cm du bord afin de laisser une petite cuvette d’arrosage. \r\rPuis arrosez généreusement votre plante,certain terreaux comprennent déjà un engrais de démarrage. \r \rIl convient donc d’attendre quelques semaines avant de les arroser.")
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

struct UBPrendresoin_Previews: PreviewProvider {
    static var previews: some View {
        UBPrendresoin()
    }
}
