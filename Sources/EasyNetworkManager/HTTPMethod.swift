//
//  HTTPMethod.swift
//  
//
//  Created by Chandrachudh K on 07/02/22.
//

import Foundation

public enum HTTPMethod {
    case get     //= "GET"
    case post    //= "POST"
    case put     //= "PUT"
    case patch   //= "PATCH"
    case delete  //= "DELETE"
    case custom(String)
    
    public var rawValue: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        case .patch:
            return "PATCH"
        case .delete:
            return "DELETE"
        case .custom(let method):
            return method
        }
    }
}
