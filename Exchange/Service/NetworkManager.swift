//
//  NetworkManager.swift
//  Exchange
//
//  Created by Batuhan Kucukyildiz on 24.08.2023.
//

import Foundation

class NetworkManager{
    
    static let shared = NetworkManager()
    private init() {}
    
    func request <T : Decodable > (_ endpoint : EndPoint , completion : @escaping (Result<T , Error> ) -> Void ) -> Void{
        let urlSessionTask = URLSession.shared.dataTask(with: endpoint.request()) {(data , response , error) in
            if let error = error{
                print(error)
            }
            if let response = response as? HTTPURLResponse {
                if (response.statusCode >= 200 && response.statusCode <= 500) {print(response.statusCode)}
                else{return}
            }
            if let data = data {
                do {
                    let decodeJsonData = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(decodeJsonData))
                }
                catch let error{
                    completion(.failure(error))
                }
            }
        }
        urlSessionTask.resume()
    }
}
