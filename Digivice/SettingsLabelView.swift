//
//  SettingsLabelView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 13/02/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: PROPERTIES
    
    var labelText: String
    var labelImage: String
    //MARK: VIEW
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Digimon", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
