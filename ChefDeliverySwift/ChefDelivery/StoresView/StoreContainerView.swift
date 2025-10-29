//
//  StoreGridView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct StoreContainerView: View {

    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 1), count: 2)
    }

    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var stores: [StoreType]

    var filteredStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter
        }
    }

    var body: some View {
        VStack(alignment: .leading) {

            HStack {
                Text(title)
                    .font(.headline)
                    .padding()
                Spacer()
                Menu("Filtrar") {

                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    Divider()

                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating > 1 {
                                Text("\(rating) estrelas ou mais")
                            } else {
                                Text("\(rating) estrela ou mais")
                            }
                        }
                    }
                }

            }

            VStack(alignment: .leading, spacing: 30) {

                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { orderItem in
                        NavigationLink {
                            StoreDetailView(store: orderItem)
                            
                        } label: {
                            StoreItemView(store: orderItem)
                        }
                    }
                    .foregroundColor(.black)

                }

            }
        }
        .padding(20)
    }
}

#Preview {
    StoreContainerView(stores: storesMock)
}
