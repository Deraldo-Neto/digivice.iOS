//
//  DigievolutionsData.swift
//  Digivice
//
//  Created by Deraldo Alves de Almeida Neto on 16/02/22.
//

import SwiftUI

// MARK: DIGIEVOLUTION DATA

let DigievolutionsData: [Digievolutions] = [
    Digievolutions(
        id: DigimonsData[0].id,
        digivolveFrom: [],
        digivolveTo: [DigimonsData[1]]
    ),
    Digievolutions(
        id: DigimonsData[1].id,
        digivolveFrom: [DigimonsData[0]],
        digivolveTo: [DigimonsData[2],DigimonsData[3],DigimonsData[4]]
    ),
    Digievolutions(
        id: DigimonsData[2].id,
        digivolveFrom: [DigimonsData[1]],
        digivolveTo: []
    ),
    Digievolutions(
        id: DigimonsData[3].id,
        digivolveFrom: [DigimonsData[1]],
        digivolveTo: []
    ),
    Digievolutions(
        id: DigimonsData[4].id,
        digivolveFrom: [DigimonsData[1]],
        digivolveTo: []
    ),
    Digievolutions(
        id: DigimonsData[5].id,
        digivolveFrom: [],
        digivolveTo: [DigimonsData[6]]
    ),
    Digievolutions(
        id: DigimonsData[6].id,
        digivolveFrom: [DigimonsData[5]],
        digivolveTo: [DigimonsData[7],DigimonsData[8],DigimonsData[9]]
    ),
    Digievolutions(
        id: DigimonsData[7].id,
        digivolveFrom: [DigimonsData[6]],
        digivolveTo: []
    ),
    Digievolutions(
        id: DigimonsData[8].id,
        digivolveFrom: [DigimonsData[6]],
        digivolveTo: []
    ),
    Digievolutions(
        id: DigimonsData[9].id,
        digivolveFrom: [DigimonsData[6]],
        digivolveTo: []
    ),
]
