//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Lori Rothermel on 7/1/23.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe: Recipe

    
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }  // ForEach
        }  // HStack
    }  // some View
}  // RecipeRatingView


struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
