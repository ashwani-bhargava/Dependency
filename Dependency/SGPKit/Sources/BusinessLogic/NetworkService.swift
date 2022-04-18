//
//  NetworkService.swift
//  Testing
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import Foundation

public protocol NetworkService {
    func getData() -> String
}

public class NetworkProvider: NetworkService {
    
    public init() {}
    
    public func getData() -> String {
        return "Some data"
    }
}
