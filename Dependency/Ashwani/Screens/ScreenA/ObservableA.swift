//
//  ObservableA.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import Foundation
import Features

public class ObservableA: ObservableObject {
    
    private var presenter: FeatureAPresentable
    
    public init(presenter: FeatureAPresentable) {
        self.presenter = presenter
    }

}

extension ObservableA {
    
    func performAction(named actionName: ViewAActions) {
        switch actionName {
        case .screenSingleFlow:
            presenter.didTapGoToScreenB()
        case .screenBookingFlow:
            presenter.didTapOnBookingFlow()
        }
    }

}
