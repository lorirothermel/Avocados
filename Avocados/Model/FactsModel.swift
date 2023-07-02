//
//  FactsModel.swift
//  Avocados
//
//  Created by Lori Rothermel on 7/1/23.
//

import SwiftUI


struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
