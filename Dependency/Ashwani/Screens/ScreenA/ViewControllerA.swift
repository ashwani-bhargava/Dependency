//
//  ViewControllerA.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import UIKit
import SwiftUI
import Features

class ViewControllerA: UIHostingController<SimpleScreenViewA> {
    
    init(presenter: FeatureAPresentable) {
        let observer = ObservableA(presenter: presenter)
        let view = SimpleScreenViewA(actionNames: ViewAActions.allCases, observer: observer)
        super.init(rootView: view)
        self.title = "Screen A"
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum ViewAActions: String, CaseIterable {
    case screenSingleFlow = "Go to screen B"
    case screenBookingFlow = "Go to Booking Flow"
}
