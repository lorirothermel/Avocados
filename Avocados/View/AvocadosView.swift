//
//  AvocadosView.swift
//  Avocados
//
//  Created by Lori Rothermel on 6/30/23.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - Properties
    @State private var pulsateAnimation: Bool = false
    
    
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1.0 : 0.9)
                .opacity(pulsateAnimation ? 1.0 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                     
                Text("""
                    Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                    """)
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
                    .padding(15)
                    
            }  // VStack
            Spacer()
            
        }  // VStack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )  // .background
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            pulsateAnimation.toggle()
        }  // .onAppear
                
    }  // some View
}  // AvocadosView



struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
