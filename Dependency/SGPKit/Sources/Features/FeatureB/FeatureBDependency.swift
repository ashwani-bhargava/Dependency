//
//  FeatureBDependency.swift
//  Testing
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import BusinessLogic

public protocol FeatureBDependency: Dependency {
    var networkService: NetworkService { get }
    var featureToggle: Bool { get }
}

protocol HasNetworkService {
    var networkService: NetworkService { get }
}

class FeatureBComponent: Component<HasNetworkService>, FeatureBDependency {
    
    var networkService: NetworkService {
        return dependency.networkService
    }
    
    var featureToggle: Bool {
        return true
    }
}
