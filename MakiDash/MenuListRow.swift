//
//  MenuListRow.swift
//  MakiDash
//
//  Created by Wiktor Bramer on 02/05/2025.
//

import SwiftUI

struct MenuListRow: View {
    
    @State var addedToOrder: Bool = false
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text(item.name)
                .bold()
            
            Spacer()
            
            Button {
                addedToOrder.toggle()
            } label: {
                Image(systemName: "cart.fill.badge.plus").accentColor(.brown).font(.title2)
            }
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown).opacity(0.1))
        .alert("\(item.name) added to order!", isPresented: $addedToOrder) {
                    Button("OK", role: .cancel) { }
                }
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test Item", price: "10.00", imageName: "tako-sushi"))
}
