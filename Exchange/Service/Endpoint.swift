//
//  Endpoint.swift
//  Exchange
//
//  Created by Batuhan Kucukyildiz on 24.08.2023.
//

import Foundation




protocol EndPointProtocol{
    var baseUrl : String {get}
    var path : String {get}
    var method : HttpMethod {get}
    var header : [String : String]? {get}
    func request()->URLRequest
    
}
enum HttpMethod : String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
    case patch = "PATCH"
}

enum EndPoint{
    case getExchangeDetails
}

extension EndPoint : EndPointProtocol{
    var baseUrl: String {
        return "https://finans.truncgil.com"
    }
    
    var path: String {
        switch self {
            case .getExchangeDetails : return "/today.json"
        }
    }
    
    var method: HttpMethod {
        switch self{
            case .getExchangeDetails : return .get
        }
    }
    
    var header: [String : String]? {
        return nil
    }
    
    func request() -> URLRequest {
        guard var compenent = URLComponents(string: baseUrl) else {
            fatalError("InvalidURL")
        }
        compenent.path = path
        var request = URLRequest(url: compenent.url!)
        request.httpMethod = method.rawValue
        return request
    }
}
