//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 03/12/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var selectedProduct: ProductType?
    
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                
                StoreDetailHeaderView(store: store)
                
                StoreDetailProductsView(products: store.products)
                
            }
            
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack (spacing: 4){
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        
                        .foregroundColor(Color("ColorRed"))
                    }
                    
                }
            }
        }
        
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
