//
//  FeatureAPresenter.swift
//  DependencyDemo (iOS)
//
//  Created by Ashwani Bhargava on 12/05/2021.
//

import BusinessLogic

public protocol FeatureAPresentable {
    func didTapGoToScreenB()
    func didTapOnBookingFlow()
}

class FeatureAPresenter: FeatureAPresentable {
    
    let router: FeatureARoutable
    let networkService: NetworkService
    
    init(router: FeatureARoutable, networkService: NetworkService) {
        self.router = router
        self.networkService = networkService
    }
    
    func didTapGoToScreenB() {
        router.routeToFeatureB()
    }
    
    func didTapOnBookingFlow() {
        router.routToBookingFlow()
    }
}
