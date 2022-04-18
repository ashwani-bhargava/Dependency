//
//  Builder.swift
//  DependencyDemo (iOS)
//
//  Created by Ashwani Bhargava on 12/05/2021.
//

import Foundation

public protocol Buildable: AnyObject {
    func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType
}

open class Builder<DependencyType>: Buildable {
    
    public let dependency: DependencyType
    
    public required init(dependency: DependencyType){
        self.dependency = dependency
    }
    
    public func build<BuildType>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType where BuildType : Scene {
        fatalError("must be overridden")
    }
}
