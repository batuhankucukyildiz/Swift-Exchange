//
//  ExchangeModel.swift
//  Exchange
//
//  Created by Batuhan Kucukyildiz on 24.08.2023.
//

import Foundation


struct ExchangeModel:Codable{
    var updateDate: String
    var usd: Currency
    var eur: Currency
    var gbp: Currency
    // Diğer para birimleri burada listelenmeli

    enum CodingKeys: String, CodingKey {
        case updateDate = "Update_Date"
        case usd = "USD"
        case eur = "EUR"
        case gbp = "GBP"
        // Diğer para birimleri burada listelenmeli
    }
}
struct Currency: Codable {
    var buy: String
    var type: String
    var sell: String
    var change: String

    enum CodingKeys: String, CodingKey {
        case buy = "Alış"
        case type = "Tür"
        case sell = "Satış"
        case change = "Değişim"
    }
}
