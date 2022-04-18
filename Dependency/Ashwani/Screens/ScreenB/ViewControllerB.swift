//
//  ViewControllerB.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import UIKit
import SwiftUI
import Features

class ViewControllerB: UIHostingController<SimpleScreenViewB> {

    init(presenter: FeatureBPresentable) {
        
        let observer = ObservableB(presenter: presenter)
        let view = SimpleScreenViewB(actionNames: ["Say hello"], observer: observer)
        super.init(rootView: view)
        self.title = "Screen B"
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
