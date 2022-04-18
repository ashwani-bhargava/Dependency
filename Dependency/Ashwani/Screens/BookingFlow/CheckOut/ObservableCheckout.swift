
import Foundation
import Features
public class ObservableCheckout: ObservableObject {
    
    private var presenter: CheckoutPresentable
    
    public init(presenter: CheckoutPresentable) {
        self.presenter = presenter
    }

}

extension ObservableCheckout {
    func performAction() {
        presenter.didPressOnFinish()
    }
}

