//
//  SettingsView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 11/02/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Digimon", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("Digivice")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Digimons são criaturas misteriosas na rede de computadores, também conhecidos como Monstros Digitais.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Sobre o app", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Desenvolvedor", content: "Deraldo")
                        SettingsRowView(name: "Designer", content: "Deraldo")
                        SettingsRowView(name: "GitHub", linkLabel: "GitHub", linkDestination: "")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Versão", content: "1.10")
                        Divider().padding(.vertical,4)
                        Text("Todas as imagens são usadas apenas para estudo e todos os direitos são reservados pela Bandai Nanco.").font(.footnote)
                    }
                }
                .navigationBarTitle(Text("Configurações"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        })
                .padding()
            }
        }

    }
}

//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
