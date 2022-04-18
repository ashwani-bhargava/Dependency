//
//  SearchTicketView.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import SwiftUI

struct SearchTicketView: View {
    @ObservedObject var observer: ObservableSearchTicket
    
    init(observer: ObservableSearchTicket) {
        self.observer = observer
    }
    
    var body: some View {
        VStack{
            Button(action: {
                observer.performAction()
            }, label: {
                Text("Searched, Go next")
            })
        }
    }
    
}
