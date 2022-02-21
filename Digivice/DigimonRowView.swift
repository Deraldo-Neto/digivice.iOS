//
//  DigimonRowView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 11/02/22.
//

import SwiftUI

struct DigimonRowView: View {
    //MARK: PROPERTIES
    var digimon: Digimon
    
    //MARK: BODY
    var body: some View {
        HStack{
            Image(digimon.image)
                .renderingMode(.original)
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red:0, green:0, blue:0, opacity: 0.50), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: digimon.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(digimon.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(digimon.headline)
                    .font(.caption)
                    .foregroundColor(Color.primary)
            }
        }
        
    }
}

//MARK: PREVIEW
struct DigimonRowView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonRowView(digimon: DigimonsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
