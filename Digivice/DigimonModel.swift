//
//  DigimonModel.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 10/02/22.
//

import SwiftUI

// MARK: DIGIMONS MODEL

struct Digimon: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var status: [String]
    var source: String
}

