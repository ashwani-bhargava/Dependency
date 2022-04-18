//
//  FeatureABuilder.swift
//  DependencyDemo (iOS)
//
//  Created by Ashwani Bhargava on 12/05/2021.
//

public class FeatureABuilder: Builder<FeatureADependency> {
    
    public override func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType {
        let router = FeatureARouter(sceneFactory: sceneFactory, navigator: navigator, featureBBuilder: dependency.featureBBuilder, searchTicketBuilder: dependency.searchTicketBuilder)
        let presenter = FeatureAPresenter(router: router, networkService: dependency.networkService)
        let scene = sceneFactory.sceneA(presenter)
        router.source = scene
        return scene
    }
}

protocol SceneFactoryA {
    
    func getSceneFactoryA<T: Scene> -> ((FeatureAPresentable) -> T)
}
// Discuss:
//
//public struct SceneFactoryA<T: Scene> {
//
//    let sceneA: (FeatureAPresentable) -> T
//    public init(sceneA: @escaping (FeatureAPresentable) -> T) {
//        self.sceneA = sceneA
//    }
//}

