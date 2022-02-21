//
//  DigievolutionsModel.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 16/02/22.
//

import SwiftUI

// MARK: DIGIEVOLUTION MODEL

struct Digievolutions: Identifiable {
    var id = UUID()
    var digivolveFrom: [Digimon]
    var digivolveTo: [Digimon]
}
