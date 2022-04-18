
import Foundation
import SwiftUI

struct CheckoutView: View {
    @ObservedObject var observer: ObservableCheckout
    
    init(observer: ObservableCheckout) {
        self.observer = observer
    }
    
    var body: some View {
        VStack{
            Button(action: {
                observer.performAction()
            }, label: {
                Text("Finish")
            })
        }
    }
    
}

