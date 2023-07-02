//
//  AppView.swift
//  Avocados
//
//  Created by Lori Rothermel on 6/30/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }  // .tabItem
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }  // .tabItem
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }  // .tabItem
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }  // .tabItem
        }  // TabView
        .accentColor(Color.primary)
    }  // some View
}  // AppView


struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
