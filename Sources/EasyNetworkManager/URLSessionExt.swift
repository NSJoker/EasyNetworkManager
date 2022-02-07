//
//  URLSessionExt.swift
//  
//
//  Created by Chandrachudh K on 07/02/22.
//

import Combine
import Foundation

////Source: https://medium.com/swift2go/simplest-networking-layer-in-ios-58193fe562c8
///
public extension URLSession {
    @available(iOS 13.0, *)
    func fetch<Response: Decodable>(for request: URLRequest, with type: Response.Type) -> AnyPublisher<Response, Error> {
        dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: type, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
