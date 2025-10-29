//
//  PaymentHeaderView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 07/01/25.
//

import SwiftUI

struct PaymentHeaderView: View {
    var body: some View {
        VStack{
            Text("Entregar no endereço")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
        HStack{
            Button(action:{}){
                Image(systemName: "mappin.and.ellipse")
                    .font(.title3)
                    .foregroundColor(.red)
                    
            }
            Text("Av.Deputado Castro de Carvalho, 135")
            .foregroundColor(Color.black)
            .font(.system(size: 15))
            
            Button(action:{}){
                Text("Trocar")
            }
         
        }
    }
}

#Preview {
    PaymentHeaderView()
        .padding()
}
