//
//  SearchViewController.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation
import SwiftUI
import Features
class SearchViewController: UIHostingController<SearchTicketView> {
    init(presenter: SearchTicketPresentable) {
        let observer = ObservableSearchTicket(presenter: presenter)
        let view = SearchTicketView(observer: observer)
        super.init(rootView: view)
        self.title = "Search Screen"
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
