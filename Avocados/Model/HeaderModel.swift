//
//  HeaderModel.swift
//  Avocados
//
//  Created by Lori Rothermel on 6/30/23.
//

import SwiftUI

// MARK: - Header Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
