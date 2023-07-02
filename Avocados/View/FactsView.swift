//
//  FactsView.swift
//  Avocados
//
//  Created by Lori Rothermel on 7/1/23.
//

import SwiftUI

struct FactsView: View {
    
    var fact: Fact
    
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing)
                )  // .background
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )  // .background
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .trailing, endPoint: .leading)
                        )  // .fill
                        .frame(width: 82, height: 82, alignment: .center)
                )  // .background
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )  // .background
                .offset(x: -150)
            
        }  // ZStack
        
    }  // some View
}  // FactsView


struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
