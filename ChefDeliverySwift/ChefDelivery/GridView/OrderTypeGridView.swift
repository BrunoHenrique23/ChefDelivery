//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem]{
        return Array(repeating: GridItem(.flexible(), spacing: 2), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 15) {
            ForEach(ordersMock) { orderItem in
                OrderTypeView(orderType: orderItem)
            }
            
        }
        .frame(height: 200)
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
    }
}

#Preview {
    OrderTypeGridView()
        
}
