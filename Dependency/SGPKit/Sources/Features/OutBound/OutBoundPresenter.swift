//
//  File.swift
//  
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation

public protocol OutBoundPresentable {
    func didTapOnPreviewButton()
}

public class OutBoundPresenter: OutBoundPresentable {
    
    let router: OutBoundRoutable
    
    init(router: OutBoundRoutable) {
        self.router = router
    }
    
    public func didTapOnPreviewButton() {
        router.routeToPreview()
    }
}
