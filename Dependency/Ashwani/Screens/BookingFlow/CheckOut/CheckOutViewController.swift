
import Foundation
import SwiftUI
import Features
class CheckoutViewController: UIHostingController<CheckoutView> {
    init(presenter: CheckoutPresentable) {
        let observer = ObservableCheckout(presenter: presenter)
        let view = CheckoutView(observer: observer)
        super.init(rootView: view)
        self.title = "CheckOut Screen"
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
