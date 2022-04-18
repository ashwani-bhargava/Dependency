//
//  FeatureBBuilder.swift
//  
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

public class FeatureBBuilder: Builder<FeatureBDependency> {
    public override func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType {
        let router = FeatureBRouter()
        let presenter = FeatureBPresenter(router: router, networkService: dependency.networkService)
        let scene = sceneFactory.sceneB(presenter)
        return scene
    }

}
