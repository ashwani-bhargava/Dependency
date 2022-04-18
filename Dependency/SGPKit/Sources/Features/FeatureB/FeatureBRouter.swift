//
//  FeatureBRouter.swift
//  Testing
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

protocol FeatureBRoutable: Router {
    func routeToFeatureB()
}

class FeatureBRouter: FeatureBRoutable {
    func routeToFeatureB() {
        // build Feature b here.
    }
}
