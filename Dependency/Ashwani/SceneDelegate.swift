//
//  SceneDelegate.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import UIKit
import SwiftUI
import Features

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let navigator = Navigator<UIViewController>{ (from, to) in
            from.navigationController?.pushViewController(to, animated: true)
        } modal: { (from, to) in
            let navController = UINavigationController(rootViewController: to)
            from.present(navController, animated: true, completion: nil)
        } dismiss: { (from) in
            from.dismiss(animated: true, completion: nil)
        }
        
        let sceneFactory = SceneFactory(sceneA: ViewControllerA.init,
                                        sceneB: ViewControllerB.init,
                                        checkout: CheckoutViewController.init,
                                        outBound: OutBoundViewController.init,
                                        preview: PreviewViewController.init,
                                        searchTicket: SearchViewController.init)
            
        let componentA = FeatureAComponent(dependency: RootComponent.sharedInstance)
        let builder = FeatureABuilder(dependency: componentA)
        let viewController: UIViewController = builder.build(sceneFactory: sceneFactory, navigator: navigator)
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UINavigationController(rootViewController: viewController)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

