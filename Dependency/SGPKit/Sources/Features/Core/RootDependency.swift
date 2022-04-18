//
//  File.swift
//  
//
//  Created by Ashwani Bhargava on 01/06/2021.
//

import Foundation
import BusinessLogic

public protocol RootDependency {
    var networkService: NetworkService { get }
}

public class RootComponent: RootDependency {
    public static let sharedInstance = RootComponent()
    
    private var _networkService: NetworkService? = nil
    public var networkService: NetworkService {
        guard let service = _networkService else {
            let networkProvider = NetworkProvider()
            _networkService = networkProvider
            return networkProvider
        }
        
        return service
    }
    
}
