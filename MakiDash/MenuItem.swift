//
//  MenuItem.swift
//  MakiDash
//
//  Created by Wiktor Bramer on 02/05/2025.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
