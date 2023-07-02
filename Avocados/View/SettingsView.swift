//
//  SettingsView.swift
//  Avocados
//
//  Created by Lori Rothermel on 6/30/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: - Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }  // VStack
            .padding()
            
            Form {
                // MARK: - Section #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }  // Toggle
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }  // Toggle
                }  // Section
                
                // MARK: - Section #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }  // HStack
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Lori B. Rothermel")
                        }  // HStack
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Lori B. Rothermel")
                        }  // HStack
                        HStack {
                            Text("Website")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("...")
                        }  // HStack
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }  // HStack
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("🤙 Happy Coding❗️")
                        }  // HStack
                    }  // HStack
                   
                }  // Section
                
            }  // Form
            
        }  // VStack
        .frame(maxWidth: 640)
        
    }  // some View
}  // SettingsView


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
