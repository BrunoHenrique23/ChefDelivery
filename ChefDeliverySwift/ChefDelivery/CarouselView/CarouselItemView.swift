//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        
        
        Image(order.image)
            .resizable()
            .scaledToFit()
            .padding(10)
    }
}

#Preview {
    CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
}
