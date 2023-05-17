//
//  HelloCanva.swift
//  Grow It
//
//  Created by Apprenant 76 on 24/04/2023.
//

import SwiftUI

struct HelloCanva: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Text("My first SwiftUI app")
                .font(.largeTitle)
         
            Spacer()
            HStack{
                Text("Sweet")
                    .font(.title)
                    .foregroundColor(Color.orange)
                Image(systemName: "heart.fill")
                    .foregroundColor(Color.red)
                    .font(.title)
            }
            Spacer()

        }
        
    }
}

struct HelloCanva_Previews: PreviewProvider {
    static var previews: some View {
        HelloCanva()
    }
}
