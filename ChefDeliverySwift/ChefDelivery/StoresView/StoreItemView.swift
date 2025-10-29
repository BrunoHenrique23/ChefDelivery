//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    
    
    
    var body: some View {
        HStack(spacing: 5){
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack{
                Text(store.name)
                    .font(.subheadline)
            }
            Spacer()
        }
        
    }
}

#Preview {
    StoreItemView(store: storesMock[0])
}
