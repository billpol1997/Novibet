//
//  NetworkError.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import Foundation
import Alamofire
public struct NetworkError: Error {
    public let initialError: AFError
    public let backendError: BackendError?
    public init(initialError: AFError, backendError: BackendError?){
        self.initialError = initialError
        self.backendError = backendError
    }
}
public struct BackendError: Codable, Error {
    public var status: String
    public var message: String
}
