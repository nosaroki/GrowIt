//
//  PageView.swift
//  Appli
//
//  Created by Apprenant 93 on 12/05/2023.
//

import SwiftUI

struct PageView: View {
    var page: Page
    var body: some View {
            VStack{
                Text(page.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("darkGreen"))
                    .padding(.top, 25.0)
                Image("\(page.imageUrl)")
                //     .resizable()
                //    .scaledToFit()
                //      .padding()
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 10.0)
                    .padding(.horizontal, 50.0)
                    .padding(.bottom, 50.0)
                Text(page.description)
                //  .font(.footnote)
                    .foregroundColor(Color("darkGreen"))
                    .multilineTextAlignment(.center)
            }
        }
    }

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
