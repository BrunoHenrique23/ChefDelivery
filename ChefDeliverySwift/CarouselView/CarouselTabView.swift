//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex = 1
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner", image: "pokes-banner")

    ]
    
    var body: some View {
        TabView(selection: $currentIndex){
            ForEach(ordersMock){ mock in
                CarouselItemView(order: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 200)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
                
                withAnimation(.easeInOut(duration: 1)){
                    if currentIndex > ordersMock.count{
                        currentIndex = 1
                    }
                    
                    currentIndex += 1
                }
                
              
                
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
