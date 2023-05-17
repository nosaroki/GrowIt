//
//  HbbreakEnvi.swift
//  Hbbreak
//
//  Created by apprenant 89 on 11/05/2023.
//

import SwiftUI

struct UBEnvironnement: View {
    var body: some View {
        let color: Color = Color("beige")
        
        // @State private var compte = ""
        //@State private var selectedFlavor: Flavor = .chocolate
        
        ZStack{
            color.edgesIgnoringSafeArea(.top)
            VStack {
                ScrollView {
                    VStack {
                        
                        Text("Environnement")
                            .font(.custom("Palatino", size: 30))
                            .foregroundColor(Color("chocolat"))
                            .padding(.top, 20)
                        
                        Rectangle()
                            .foregroundColor(Color(.brown))
                            .frame(width:215,height:2)
                            .padding(.top, -10)
                        
                        Text("L’emplacement ")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 230)
                            
                                .overlay {
                                    Text("Pour un bon emplacement de votre culture d’herbes aromatiques, il vous faut adapter aux besoins de votre herbe. \r\rGénéralement la germination des semences nécessite une certaine chaleur avec une  température optimale à partir  de 20°C.Mais elle peut être différente d’une variété à une autre. ")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        Text("La lumière ")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 230)
                            
                                .overlay {
                                    Text("Il est un facteur important pour la croissance des plantes. Vos graines se distinguent selon leurs conditions de germination à la lumière ou à l’obscurité.\r\rCelles germant dans l’obscurité sont entièrement recouvertes de terreau, à la hauteur des graines et celles germant à la lumière sont légèrement recouvertes.")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        Text("L’eau")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 220)
                            
                                .overlay {
                                    Text("Vos plantes ne vivent pas seulement d’amour, mais  ont également besoin d’eau et pour la plupart de beaucoup d’eau pour être en bonne santé.\r\rToutefois, cela ne vaut qu’à partir du moment où la plante a déjà atteint une certaine taille. ")
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
            .padding()
            
        }
    }
}

struct UBEnvironnement_Previews: PreviewProvider {
    static var previews: some View {
        UBEnvironnement()
    }
}
