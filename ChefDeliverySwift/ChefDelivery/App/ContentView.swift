//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    
    private var service = HomeService()
    @State private var storesType: [StoreType] = []
    
    @State private var isLoading = true
    
    var body: some View {
        NavigationView {
            VStack{
                if isLoading{
                    ProgressView()
                }else{
                    NavigationBar()
                        .padding(.horizontal, 15)
                        .padding(.top, 10)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 20) {
                            OrderTypeGridView()
                            CarouselTabView()
                            StoreContainerView(stores:storesType)
                                .padding(20)
                                
                        }
                    }
                }
              
            }
        }
        .onAppear{
            Task {
              await getStores()
            }
        }
    }
    
    //MARK: Methods
    func getStores() async{
        do{
            let result = try await service.fetchData()
            switch result{
            case .success(let stores):
                self.storesType = stores
                self.isLoading = false
            case .failure(let error):
                print(error.localizedDescription)
                self.isLoading = false
            }
        } catch {
            print(error.localizedDescription)
            self.isLoading = false
        }
    }
   
}
 #Preview {
    ContentView()
        
}
