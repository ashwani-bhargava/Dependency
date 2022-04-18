//
//  File.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation
import SwiftUI
import Features
class OutBoundViewController: UIHostingController<OutBoundView> {
    init(presenter: OutBoundPresentable) {
        let observer = ObservableOutBound(presenter: presenter)
        let view = OutBoundView(observer: observer)
        super.init(rootView: view)
        self.title = "OutBound Trains"
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
