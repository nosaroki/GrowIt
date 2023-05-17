//
//  ContentView.swift
//  Appli
//
//  Created by Apprenant 93 on 05/05/2023.
//

import SwiftUI

struct OnBoardingTotal: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    @Binding var onBoardingDone: Bool
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("lightGreen")
                    .ignoresSafeArea()
                TabView(selection: $pageIndex){
                    ForEach(pages){ page in
                        VStack{
                            Spacer()
                            PageView(page: page)
                            Spacer()
                            if page == pages.last{

                                Button {
                                    onBoardingDone.toggle()
                                } label: {
                                    Text("C'est parti !")
                                        .buttonStyle(.bordered)
                                        .padding()
                                        .background(Color("darkGreen"))
                                        .cornerRadius(10)
                                        .foregroundColor(Color("beige"))
                                }

                            }
                            Spacer()
                        }
                        .tag(page.tag)
                    }
                }
                .animation(.easeInOut, value: pageIndex)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                .onAppear{
                    dotAppearance.currentPageIndicatorTintColor = .blue
                    dotAppearance.pageIndicatorTintColor = .brown
                }
            }
        }
    }
        func incrementPage(){
            pageIndex += 1
        }
        func goToZero(){
            pageIndex = 0
        }
    }
struct OnBoardingTotal_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingTotal(onBoardingDone: .constant(true))
    }
}
