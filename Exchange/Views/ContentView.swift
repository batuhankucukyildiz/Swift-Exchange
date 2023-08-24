//
//  ContentView.swift
//  Exchange
//
//  Created by Batuhan Kucukyildiz on 24.08.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = HomeScreenViewModel()
    
    var body: some View {
        VStack {
            if let data = viewModel.exchangeData {
                VStack(alignment: .leading) {
                    Text("Update Date: \(data.updateDate)")
                    Text("USD: \(data.usd.buy)")
                    Text("EUR: \(data.eur.buy)")
                    Text("GBP: \(data.gbp.buy)")
                }
                .padding()
                .border(Color.black, width: 1) // İsteğe bağlı, görüntüyü düzenlemek için
            } else {
                Text("No data available.")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
