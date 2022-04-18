//
//  FeatureADependency.swift
//  Testing
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import BusinessLogic

// In the project, Feature === Screen.
// However, Feature could be some functionality without a screen, or it could be a coordinator.

// Each feature has one component associated. "Dependency" is a group of requirements for a feature to
// be created. "Component" is the object which is responsible for creating/returning/fulfilling those requirements.

// FeatureBBuilder is a concrete type - but it could become a protocol (I think).

public protocol FeatureADependency: Dependency {
    var networkService: NetworkService { get }
    var featureToggle: Bool { get }
    var featureBBuilder: Buildable { get }
    var searchTicketBuilder: Buildable { get }
}

public class FeatureAComponent: Component<RootDependency>, FeatureADependency, HasNetworkService {
    
    public var networkService: NetworkService {
        return dependency.networkService
    }
    
    public var featureToggle: Bool{
        return true
    }
    
    public var featureBBuilder: Buildable {
        return FeatureBBuilder(dependency: FeatureBComponent(dependency: self))
    }

    public var searchTicketBuilder: Buildable {
        return SearchTicketBuilder(dependency: SearchTicketComponent(dependency: ()))
    }
}
