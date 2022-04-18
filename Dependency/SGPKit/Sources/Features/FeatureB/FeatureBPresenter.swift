//
//  FeatureBPresenter.swift
//  Testing
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import BusinessLogic

public protocol FeatureBPresentable {
    func didTapSayHello()
}

class FeatureBPresenter: FeatureBPresentable {
    
    let router: FeatureBRoutable
    let networkService: NetworkService
    
    init(router: FeatureBRoutable, networkService: NetworkService) {
        self.router = router
        self.networkService = networkService
    }
    
    func didTapSayHello() {
        print("hello 👋")
    }
    
}
