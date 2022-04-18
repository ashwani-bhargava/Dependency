//
//  OutBound.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation
import Features
public class ObservableOutBound: ObservableObject {
    
    private var presenter: OutBoundPresentable
    
    public init(presenter: OutBoundPresentable) {
        self.presenter = presenter
    }
}

extension ObservableOutBound {
    func performAction() {
        presenter.didTapOnPreviewButton()
    }
}
