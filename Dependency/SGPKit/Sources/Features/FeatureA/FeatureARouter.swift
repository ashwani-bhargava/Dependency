//
//  FeatureARouter.swift
//  DependencyDemo (iOS)
//
//  Created by Ashwani Bhargava on 12/05/2021.
//

protocol FeatureARoutable: Router {
    func routeToFeatureB()
    func routToBookingFlow()
}

class FeatureARouter<T: Scene>: FeatureARoutable {
    
    let featureBBuilder: Buildable
    let searchTicketBuilder: Buildable
    private let sceneFactory: SceneFactory<T>
    let navigator: Navigator<T>
    weak var source: T?
    
    init(sceneFactory: SceneFactory<T>,
         navigator: Navigator<T>,
         featureBBuilder: Buildable,
         searchTicketBuilder: Buildable) {
        self.sceneFactory = sceneFactory
        self.navigator = navigator
        self.featureBBuilder = featureBBuilder
        self.searchTicketBuilder = searchTicketBuilder
    }
    
    func routeToFeatureB() {
        let scene = featureBBuilder.build(sceneFactory: sceneFactory, navigator: navigator)
        guard let source = self.source else {
            return
        }
        navigator.navigate(source, scene)
    }
    
    func routToBookingFlow() {
        let scene = searchTicketBuilder.build(sceneFactory: sceneFactory, navigator: navigator)
        guard let source = self.source else {
            return
        }
        navigator.modal(source, scene)
    }
}
