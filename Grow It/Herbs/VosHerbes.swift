//
//  VosHerbes.swift
//  Catalogue
//
//  Created by Apprenant 93 on 15/05/2023.
//

import SwiftUI

struct VosHerbes: View {
    @State private var PlantdataA: [Herbs]=[aneth]
    @State private var PlantdataB: [Herbs]=[basilicGV]
    @State private var PlantdataC: [Herbs]=[ciboulette]
    @State private var PlantdataD: [Herbs]=[]
    @State private var PlantdataE: [Herbs]=[estragon]
    @State private var PlantdataF: [Herbs]=[]
    @State private var PlantdataG: [Herbs]=[]
    @State private var PlantdataH: [Herbs]=[]
    @State private var PlantdataI: [Herbs]=[]
    @State private var PlantdataJ: [Herbs]=[]
    @State private var PlantdataK: [Herbs]=[]
    @State private var PlantdataL: [Herbs]=[]
    @State private var PlantdataM: [Herbs]=[menthe]
    @State private var PlantdataN: [Herbs]=[]
    @State private var PlantdataO: [Herbs]=[origan]
    @State private var PlantdataP: [Herbs]=[persil]
    @State private var PlantdataQ: [Herbs]=[]
    @State private var PlantdataR: [Herbs]=[romarin]
    @State private var PlantdataS: [Herbs]=[sauge]
    @State private var PlantdataT: [Herbs]=[thym]
    @State private var PlantdataU: [Herbs]=[]
    @State private var PlantdataV: [Herbs]=[]
    @State private var PlantdataW: [Herbs]=[]
    @State private var PlantdataX: [Herbs]=[]
    @State private var PlantdataY: [Herbs]=[]
    @State private var PlantdataZ: [Herbs]=[]
    
    // let Plantdata: Herbs
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 0.216, green: 0.292, blue: 0.162)
                    .ignoresSafeArea()
                Color(red: 0.959, green: 0.924, blue: 0.843)
                    .padding(.top, 50)
                
                
                ZStack{
                    
                    VStack {
                        Text("VOS HERBES AROMATIQUES À PLANTER")
                            .font(.custom("Palatino", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.959, green: 0.924, blue: 0.843))
                        
                        ScrollView{
                            LazyVStack(alignment: .leading, spacing: 0, pinnedViews: [.sectionHeaders]) {
                                
                                //1st Group
                                Group{
                                    Section {
                                        ForEach(PlantdataA.sorted(by: {$0.name < $1.name})) { plant in
                                            if (plant.name == "Ail") {
                                                NavigationLink(
                                                    destination:Ail()){
                                                        
                                                        HStack{
                                                            Image(plant.image)
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fill)
                                                                .frame(width: 70, height: 70)
                                                                .clipped()
                                                            Text(plant.name)
                                                                .foregroundColor(Color("chocolat"))
                                                        }
                                                        .padding(.leading)
                                                        .padding(.top, 5.0)
                                                    }
                                            }
                                            else if (plant.name == "Aneth") {
                                                NavigationLink(
                                                    destination:Aneth()){
                                                        
                                                        HStack{
                                                            Image(plant.image)
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fill)
                                                                .frame(width: 70, height: 70)
                                                                .clipped()
                                                            Text(plant.name)
                                                                .foregroundColor(Color("chocolat"))
                                                                .font(.custom("gillsans", size: 20))
                                                        }
                                                        .padding(.leading)
                                                        .padding(.top, 5.0)
                                                    }
                                            }
                                        }
                                    }
                                    
                                    
                                header: {
                                    Text("A")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    
                                    Section {
                                        ForEach(PlantdataB.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:BasilicGV()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                            
                                        }
                                    }
                                header: {
                                    Text("B")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    
                                    
                                    Section {
                                        ForEach(PlantdataC.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Ciboulette()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    }
                                header: {
                                    Text("C")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    
                                    Section {
                                        ForEach(PlantdataD.sorted(by: {$0.name < $1.name})) { plant in
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                    }
                                    
                                    /*             header: {
                                     Text("D")
                                     .font(.title)
                                     .fontWeight(.bold)
                                     .foregroundColor(Color("chocolat"))
                                     .padding()
                                     }*/
                                    Section {
                                        ForEach(PlantdataE.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Estragon()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                            
                                        }
                                    }
                                header: {
                                    Text("E")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    Section {
                                        ForEach(PlantdataF.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    /*header: {
                                     Text("F")
                                     .font(.title)
                                     .fontWeight(.bold)
                                     .foregroundColor(Color("chocolat"))
                                     .padding()
                                     }
                                     */
                                    Section {
                                        ForEach(PlantdataG.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    /*header: {
                                     Text("G")
                                     .font(.title)
                                     .fontWeight(.bold)
                                     .foregroundColor(Color("chocolat"))
                                     .padding()
                                     }*/
                                    Section {
                                        ForEach(PlantdataH.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    /*header: {
                                     Text("H")
                                     .font(.title)
                                     .fontWeight(.bold)
                                     .foregroundColor(Color("chocolat"))
                                     .padding()
                                     }*/
                                    Section {
                                        ForEach(PlantdataI.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                    }
                                }
                                .padding(.top, 10)
                                
                                
                                
                                
                                //2nd Group
                                Group{
                                    Section {
                                        ForEach(PlantdataJ.sorted(by: {$0.name < $1.name})) { plant in
                                            //          NavigationLink {
                                            
                                            
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataK.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    /*      header: {
                                     Text("K")
                                     .font(.title)
                                     .fontWeight(.bold)
                                     .foregroundColor(Color("chocolat"))
                                     .padding()
                                     }
                                     */
                                    
                                    Section {
                                        ForEach(PlantdataL.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    /*             header: {
                                     Text("L")
                                     .font(.title)
                                     .fontWeight(.bold)
                                     .foregroundColor(Color("chocolat"))
                                     .padding()
                                     }
                                     */
                                    Section {
                                        ForEach(PlantdataM.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Menthe())  {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    }
                                header: {
                                    Text("M")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    Section {
                                        ForEach(PlantdataN.sorted(by: {$0.name < $1.name})) { plant in
                                            //              NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        //    }
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataO.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Origan()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    } header: {
                                        Text("O")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("chocolat"))
                                            .padding()
                                    }
                                    Section {
                                        ForEach(PlantdataP.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Persil()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    }
                                header: {
                                    Text("P")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    Section {
                                        ForEach(PlantdataQ.sorted(by: {$0.name < $1.name})) { plant in
                                            //  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        // }
                                    }
                                    Section {
                                        ForEach(PlantdataR.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Romarin()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    }
                                header: {
                                    Text("R")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                }
                                
                                // 3rd Group
                                
                                Group{
                                    Section {
                                        ForEach(PlantdataS.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Sauge()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    }
                                    
                                header: {
                                    Text("S")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    
                                    Section {
                                        ForEach(PlantdataT.sorted(by: {$0.name < $1.name})) { plant in
                                            NavigationLink(destination:Thym()) {
                                                HStack{
                                                    Image(plant.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 70, height: 70)
                                                        .clipped()
                                                    Text(plant.name)
                                                        .foregroundColor(Color("chocolat"))
                                                        .font(.custom("gillsans", size: 20))
                                                }
                                                .padding(.leading)
                                                .padding(.top, 5.0)
                                            }
                                        }
                                    }
                                header: {
                                    Text("T")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("chocolat"))
                                        .padding()
                                }
                                    
                                    
                                    Section {
                                        ForEach(PlantdataU.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataV.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataW.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataX.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataY.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                    
                                    Section {
                                        ForEach(PlantdataZ.sorted(by: {$0.name < $1.name})) { plant in
                                            //                  NavigationLink(destination:name()) {
                                            HStack{
                                                Image(plant.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 70, height: 70)
                                                    .clipped()
                                                Text(plant.name)
                                                    .foregroundColor(Color("chocolat"))
                                                    .font(.custom("gillsans", size: 20))
                                            }
                                            .padding(.leading)
                                            .padding(.top, 5.0)
                                        }
                                        
                                        // }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


struct VosHerbes_Previews: PreviewProvider {
    static var previews: some View {
        VosHerbes()
    }
}
