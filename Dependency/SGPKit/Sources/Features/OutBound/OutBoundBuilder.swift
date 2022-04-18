//
//  File 3.swift
//  
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation

public class OutBoundBuilder: Builder<OutBoundDependency> {
    public override func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType {
        let router = OutBoundRouter(sceneFactory: sceneFactory, navigator: navigator, previewBuilder: dependency.previewBuilder)
        let presenter = OutBoundPresenter(router: router)
        let scene = sceneFactory.outBound(presenter)
        router.source = scene
        return scene
    }

}
