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
        
    }
}
