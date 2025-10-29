//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Bruno Henrique Ferraz da Silva on 08/01/25.
//

import Foundation

enum RequestError: Error {
    case invalidURL
    case clientError
    case serverError
    case errorRequesting(error: String)
    case other(Error)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], Error>{
        guard let url = URL(string: "https://private-1ec07b-chefdeliveryapi2.apiary-mock.com/home") else {
            
            return .failure(RequestError.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObjects = try! JSONDecoder().decode([StoreType].self, from: data)        
        
        return .success(storesObjects)
        
        
    }
    
    func confirmOrder(product: ProductType) async throws -> Result<[String: Any]?, RequestError>{
        
        guard let url = URL(string: "https://private-1ec07b-chefdeliveryapi2.apiary-mock.com/home") else {
            return .failure(RequestError.invalidURL)
        }
        
        let encodedObject = try JSONEncoder().encode(product)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = encodedObject
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let message = try JSONSerialization.jsonObject(with: data) as? [String: Any]
        
        return .success(message)
    }
   
}


