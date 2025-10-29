//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("Av. Deputado Castro de Carvalho, 153") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            
            Button(action:{}){
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    NavigationBar()
        .padding()
}
