//
//  ContentView.swift
//  MakiDash
//
//  Created by Wiktor Bramer on 03/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "menucard.fill")
                }
        }.accentColor(.brown)
    }
}

#Preview {
    ContentView()
}
