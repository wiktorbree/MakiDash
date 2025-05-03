//
//  ContentView.swift
//  MakiDash
//
//  Created by Wiktor Bramer on 02/05/2025.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    
    var dataService = DataService()
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Menu").font(.title).fontWeight(.semibold).padding()
                Spacer()
            }
            
            List(menuItems) { item in
                MenuListRow(item: item)
            }
            .listStyle(.plain)
            .onAppear {
                menuItems = dataService.getData()
            }
        }
        
        
        
    }
}

#Preview {
    MenuView()
}
