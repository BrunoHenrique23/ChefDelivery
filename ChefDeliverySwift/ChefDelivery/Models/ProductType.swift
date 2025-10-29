//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 06/12/24.
//

import Foundation


struct ProductType: Identifiable, Codable{
    
    let id: Int
    
    let name: String
    
    let description: String
    
    let image: String
    
    let price: Double
    
    var formattedPrice: String{
        return "R$" + price.formatPrice()
    }
}
