//
//  File.swift
//  
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation

public protocol PreviewPresentable {
    func didTapOnCheckout()
}

public class PreviewPresenter: PreviewPresentable {
    let router: PreviewRoutable
    
    init(router: PreviewRoutable) {
        self.router = router
    }
    
    public func didTapOnCheckout() {
        router.routeToCheckout()
    }
}
