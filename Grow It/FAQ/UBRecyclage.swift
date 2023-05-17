//
//  UBRecyclage.swift
//  Hbbreak
//
//  Created by apprenant 89 on 11/05/2023.
//

import SwiftUI

struct UBRecyclage: View {
    var body: some View {
        
        let color: Color = Color("beige")
        
        ZStack{
            color.edgesIgnoringSafeArea(.top)
            VStack {
                ScrollView {
                    VStack {
                        
                        Text("Recyclage")
                            .font(.custom("Palatino", size: 30))
                            .foregroundColor(Color("chocolat"))
                            .padding(.top, 20)
                        Rectangle()
                            .foregroundColor(Color(.brown))
                            .frame(width:135,height:2)
                            .padding(.top, -10)
                        
                        Text("Déchets organiques")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 300)
                            
                                .overlay {
                                    Text("Ne jetez pas vos déchets! Enfin... pas tous! \r\rEn effet, beaucoup d'entre eux peuvent être réutiliser pour nourrir la terre de vos herbes aromatiques.\r\rVous pouvez gardez vos peaux de bananes dans un récipient d'eau pendant 2 jours et utiliser cette même eau pour arroser vos herbes. Le potassium contenu dans les peaux de bananes est plein de nutriments bons pour vos plantes!")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        Text(" La fertilisation des sols ")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 250)
                            
                                .overlay {
                                    Text("La fertilisation est le processus consistant à apporter à un milieu de culture, tel que le sol. \r\rLes éléments nécessaires au développement de votre plante, de son entretien ou de l'amélioration de la vie du sol. \r\rLe fertilisant peut être spécifique engrais ou amendement. Il peut aussi être mixte engrais et amendement.")
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                            
                        }
                        Text("Récupérateur d’eau")
                            .font(.custom("gillsans", size: 23))
                            .foregroundColor(Color("darkGreen"))
                            .padding(.top, 20)
                        VStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .foregroundColor(Color("lightGreen"))
                                .frame(width: 360, height: 320)
                            
                                .overlay {
                                    Text("La pluie, tombant sur la toiture de la maison, est Il permet de canalisée l'eau de la pluie, tombant sur la toiture de la maison dans une gouttière qui est reliée à une cuve, enterrée ou non. \r\rEntre les deux, est placé un collecteur de gouttière, dit aussi récupérateur d'eau pluviale, où l'eau est filtrée. \r\rCela empêche feuilles, brindilles et insectes de tomber dans la cuve.")
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

struct UBRecyclage_Previews: PreviewProvider {
    static var previews: some View {
        UBRecyclage()
    }
}
