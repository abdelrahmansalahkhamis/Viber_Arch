//
//  UserRouter.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import Foundation
import Alamofire

enum UserRouter: URLRequestConvertible{
    func asURLRequest() throws -> URLRequest {
        return URLRequest(url: URL(string: "")!)
    }
    
    case get
    var method: HTTPMethod{
        switch self{
        case .get:
            return .get
        }
    }
    
    var parameters: [String: Any]?{
        switch self{
        case .get:
            return nil
        }
    }
    
    var url: URL?{
        let relativePath: String?
        switch self{
        case .get:
            relativePath = Constants.usersEndpoint
        }
        return URL(string: relativePath ?? "")
    }
}

