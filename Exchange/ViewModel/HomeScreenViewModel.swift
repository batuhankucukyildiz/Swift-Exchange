//
//  HomeScreenViewModel.swift
//  Exchange
//
//  Created by Batuhan Kucukyildiz on 24.08.2023.
//

import Foundation

class HomeScreenViewModel : ObservableObject {
    @Published var exchangeData : ExchangeModel?
    init(){
        fetchCurrencyData()
    }
    func fetchCurrencyData() {
        NetworkManager.shared.getAllExchangeData{ result in
                switch result {
                    case .success(let data):
                        self.exchangeData = data
                        print(data)
                    case .failure(let error):
                        print("Error fetching data: \(error)")
                }
            }
        }
}
