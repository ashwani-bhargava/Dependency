//
//  OutBoundView.swift
//  Ashwani
//
//  Created by Ashwani Bhargava on 31/05/2021.
//

import Foundation
import SwiftUI

struct OutBoundView: View {
    @ObservedObject var observer: ObservableOutBound
    
    init(observer: ObservableOutBound) {
        self.observer = observer
    }
    
    var body: some View {
        VStack{
            Button(action: {
                observer.performAction()
            }, label: {
                Text("Go to preview")
            })
        }
    }
    
}
