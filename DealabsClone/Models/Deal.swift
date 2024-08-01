//
//  Deal.swift
//  DealabsClone
//
//  Created by Tarek Noubli on 01/08/2024.
//

import Foundation

struct Deal: Identifiable {
    let id = UUID()
    let title: String
    let date: Date
    var price: Int
    var shippingFee: Int
    var seller: String
    var link: String
    let image: String
    var likes: Int
    let user: User
}
