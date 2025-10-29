//
//  PaymentContainerView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 07/01/25.
//

import SwiftUI

struct PaymentContainerView: View {
    
     let payments: [PaymentType]
    
    @State private var selectedPaymentOption: PaymentType?
    
    var body: some View {
        VStack {
            PaymentHeaderView()
                .padding()
        }
        VStack (alignment: .leading) {
            
            Text("Forma de pagamento")
                .font(.title)
                .padding()
                .fontWeight(.semibold)
            
            ForEach(payments) { paymentOption in
                Button {
                    selectedPaymentOption = paymentOption
                } label: {
                    PaymentItemView(payment: paymentOption)
                        .foregroundColor(Color.black)
                }
                .padding()
            }
    
        }
        HStack {
    
            Button {
                //
            } label: {
                Text("Continuar")
                    .padding(.horizontal, 32)
                    .padding(.vertical, 16)
                    .font(.title3)
                    .bold()
                    .frame(width: 200, height: 56)
                    .background(Color("ColorRed"))
                    .foregroundColor(.white)
                    .cornerRadius(32)
                    .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
                
            }
        }
    }
}


#Preview {
    PaymentContainerView(payments: paymentTypesMocks)
}
