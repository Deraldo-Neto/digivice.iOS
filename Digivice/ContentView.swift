//
//  ContentView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 10/02/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    @State private var isShowingSettings: Bool = false
    var digimons: [Digimon] = DigimonsData
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(digimons.shuffled()) { item in
                    NavigationLink(destination: DigimonDetailView(digimon:item)){
                        DigimonRowView(digimon:item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Digimons")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//:BUTTON
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }//:NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(digimons: DigimonsData)
            .preferredColorScheme(.dark)
    }
}
