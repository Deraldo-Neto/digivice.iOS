//
//  DigimonDetailView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 11/02/22.
//

import SwiftUI

struct DigimonDetailView: View {
    //MARK: PROPERTIES
    var digimon: Digimon
    let digievolutions: [Digievolutions] = DigievolutionsData
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    DigimonHeaderView(digimon: digimon)
                    
                    VStack(alignment: .leading,spacing: 20) {
                        //TITLE
                        Text(digimon.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(digimon.gradientColors[1])
                        
                        //HEADLINE
                        Text(digimon.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //STATUS
                        DigimonStatusView(digimon: digimon)
                        
                        //DIGIEVOLUTIONS
                        Text("Digievolve de:".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(digimon.gradientColors[1])
                        ForEach(digievolutions) { item in
                            if item.id == digimon.id {
                                if item.digivolveFrom.isEmpty {
                                    Text("\(digimon.title) não possui Digievoluções anteriores").multilineTextAlignment(.leading)
                                } else {
                                    DigievolutionDetailView(digimon: item.digivolveFrom)
                                }
                            }
                        }
                        
                        Text("Digievolve para:".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(digimon.gradientColors[1])
                        ForEach(digievolutions) { item in
                            if item.id == digimon.id {
                                if item.digivolveTo.isEmpty {
                                    Text("\(digimon.title) não possui Digievoluções").multilineTextAlignment(.leading)
                                } else {
                                    DigievolutionDetailView(digimon: item.digivolveTo)
                                }
                            }
                        }
                        
                        //SUBHEADLINE
                        Text("Saiba mais sobre \(digimon.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(digimon.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(digimon.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//:VSTACK
                .navigationBarTitle(digimon.title,displayMode: .inline)
                .navigationBarHidden(true)
            }//:SCROLL
            .edgesIgnoringSafeArea(.top)
        }//NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: PREVIEW
struct DigimonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonDetailView(digimon: DigimonsData[0])
    }
}
