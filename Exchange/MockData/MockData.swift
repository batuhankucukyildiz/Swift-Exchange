//
//  MockData.swift
//  Exchange
//
//  Created by Batuhan Küçükyıldız on 24.08.2023.
//

import Foundation




let currencyData: [String: Any] = [
    "dolar": 8.35,
    "euro": 9.81,
    "altın" : 1000
]


func getFakeExchange(completion : @escaping([String: Any]) -> Void){
    DispatchQueue.global().asyncAfter(deadline: .now() + 3 ) {
        completion(currencyData)
    }
}
