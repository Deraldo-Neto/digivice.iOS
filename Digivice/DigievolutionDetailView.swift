//
//  DigievolutionDetailView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 14/02/22.
//

import SwiftUI

struct DigievolutionDetailView: View {
    //MARK: PROPERTIES
    var digimon: [Digimon]
        
    //MARK: BODY
    var body: some View {
        HStack {
            ForEach(digimon) { item in
                ZStack{
                    Image(item.image)
                        .renderingMode(.original)
                        .scaledToFit()
                        .frame(width: 80, height: 80, alignment: .center)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                        .background(LinearGradient(gradient: Gradient(colors: item.gradientColors), startPoint: .top, endPoint: .bottom)
                        )
                        .cornerRadius(8)
                }//ZSTACK
            }//FOREACH
        }//HSTACK
    }//BODY
}
//MARK: PREVIEW
struct DigievolutionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DigievolutionDetailView(digimon: DigimonsData)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
