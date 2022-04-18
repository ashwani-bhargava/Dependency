//
//  File 3.swift
//  
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation
public class CheckOutBuilder: Builder<CheckoutDependency> {
    public override func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType {
        let router = CheckOutRouter(sceneFactory: sceneFactory,
                                    navigator: navigator,
                                    previewBuilder: dependency.previewBuilder)
        let presenter = CheckoutPresenter(router: router,
                                          checkoutService: dependency.checkoutService)
        let scene = sceneFactory.checkout(presenter)
        router.source = scene
        return scene
    }

}
