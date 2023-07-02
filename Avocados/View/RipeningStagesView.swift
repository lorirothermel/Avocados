//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Lori Rothermel on 6/30/23.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }  // ForEach
                }  // HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }  // VStack
        }  // ScrollView
        .edgesIgnoringSafeArea(.all)
        
    }  // some View
}  // RipeningStagesView


struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
