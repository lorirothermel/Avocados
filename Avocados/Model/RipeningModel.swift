//
//  RipeningModel.swift
//  Avocados
//
//  Created by Lori Rothermel on 7/2/23.
//

import SwiftUI


struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
