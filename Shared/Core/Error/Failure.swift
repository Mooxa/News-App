//
//  Failure.swift
//  Xibaar
//
//  Created by Mouhamed Dieye on 22/05/2021.
//

import Foundation

enum NetworkingErrors: Error {
    case errorParsingJSON
    case noInternetConnection
//    case dataReturnedNil
//    case returnedError(Error)
//    case invalidStatusCode(Int)
//    case customError(String)
}

extension NetworkingErrors: CustomStringConvertible {
    public var description: String {
        switch self {
        case .errorParsingJSON:
            return "The provided password is not valid."
        case .noInternetConnection:
            return "The specified item could not be found."
//        case .dataReturnedNil:
//            break
//        case .returnedError(_):
//            break
//        case .invalidStatusCode(_):
//            break
//        case .customError(_):
//            break
        }
    }
}
