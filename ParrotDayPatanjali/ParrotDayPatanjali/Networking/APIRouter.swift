//
//  APIRouter.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import Foundation

enum APIRouter {
    case getData
    
    var urlRequest: URLRequest {
        switch self {
        case .getData:
            return URLRequest(url: URL(string: "http://www.boredapi.com/api/activity")!)
        }
    }
}
