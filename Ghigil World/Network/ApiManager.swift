//
//  ApiManager.swift
//  Ghigil World
//
//  Created by Raul.Illan on 1/7/22.
//

import Foundation
import Combine
import Alamofire

class ApiManager {
    
    func performRequest<T: Decodable>(
        url: String,
        method: HTTPMethod,
        headers: HTTPHeaders = [],
        queryParams: Parameters = [:]
    ) -> AnyPublisher<T, Error> {
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return AF.request(
            url,
            method: method,
            parameters: queryParams,
            headers: addCustomHeaderToDefaultHeaders(customHeaders: headers))
        .validate()
        .publishDecodable(type: T.self, decoder: decoder)
        .value()
        .mapError { $0 as Error }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
    
    private func addCustomHeaderToDefaultHeaders(customHeaders: HTTPHeaders) -> HTTPHeaders {
        var headers: HTTPHeaders = [
            "Accept": "application/json"]
        
        customHeaders.forEach { customeHeader in
            headers.add(customeHeader)
        }
        return headers
    }
}
