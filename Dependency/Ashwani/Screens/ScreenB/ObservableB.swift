//
//  ObservableB.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 17/05/2021.
//

import Foundation
import Features

public class ObservableB: ObservableObject {
    
    private var presenter: FeatureBPresentable
    
    public init(presenter: FeatureBPresentable) {
        self.presenter = presenter
    }
}

extension ObservableB {
    
    func performAction(named actionName: String) {
        
        presenter.didTapSayHello()
    }

}
