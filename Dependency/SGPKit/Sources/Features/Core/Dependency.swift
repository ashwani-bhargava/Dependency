//
//  Dependency.swift
//  DependencyDemo (iOS)
//
//  Created by Ashwani Bhargava on 12/05/2021.
//

import Foundation

public protocol Dependency {
    associatedtype DependencyType
    init(dependency: DependencyType)
}

open class Component<DependencyType>: Dependency {
    public let dependency: DependencyType
    
    required public init(dependency: DependencyType) {
        self.dependency = dependency
    }
}
