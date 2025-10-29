//
//  PaymentItemView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 07/01/25.
//

import SwiftUI

struct PaymentItemView: View {
    
    let payment: PaymentType
    
    var body: some View {
        HStack(spacing: 5) {
            Image(payment.imageUrl)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            Text(payment.name)
                .padding(.bottom, 4)
            Spacer()
        }
    }
}

#Preview {
    PaymentItemView(payment: paymentTypesMocks[0])
}
