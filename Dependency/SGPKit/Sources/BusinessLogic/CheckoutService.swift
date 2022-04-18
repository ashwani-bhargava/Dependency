//
//  File.swift
//  
//
//  Created by Ashwani Bhargava on 01/06/2021.
//

import Foundation

public protocol CheckoutService {
    func getCheckoutInformation()
}

public class CheckoutProvider: CheckoutService {
    let networkService: NetworkService
    
    public init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    public func getCheckoutInformation() {
        let response = networkService.getData()
        print(response)
    }
}
