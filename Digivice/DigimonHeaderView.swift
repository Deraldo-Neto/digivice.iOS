//
//  DigimonHeaderView.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 11/02/22.
//

import SwiftUI

struct DigimonHeaderView: View {
    //MARK: PROPERTIES
    var digimon: Digimon
    @State private var isAnimatingImage: Bool = false
    
    //MARK: BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: digimon.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(digimon.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.5), radius: 8, x: 6, y: 8)
                .padding(.vertical, 120)
                .padding(.horizontal, 120)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //:ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct DigimonHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonHeaderView(digimon: DigimonsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
