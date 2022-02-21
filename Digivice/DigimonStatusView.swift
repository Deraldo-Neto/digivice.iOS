//
//  DigimonStatusView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 11/02/22.
//

import SwiftUI

struct DigimonStatusView: View {
    //MARK: PROPERTIES
    
    var digimon: Digimon
    let status: [String] = ["Estágio","Tipo"]
    
    //MARK: BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Características do Digimon") {
                ForEach(0 ..< status.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(status[item])
                        }
                        .foregroundColor(digimon.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(digimon.status[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

//MARK: PREVIEW
struct DigimonStatusView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonStatusView(digimon: DigimonsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 440))
            .padding()
    }
}
