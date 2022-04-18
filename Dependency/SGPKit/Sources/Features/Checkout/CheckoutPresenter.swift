
import Foundation
import BusinessLogic
public protocol CheckoutPresentable {
    func didPressOnFinish()
}

public class CheckoutPresenter: CheckoutPresentable {
    let router: CheckOutRoutable
    
    let checkoutService: CheckoutService
    init(router: CheckOutRoutable, checkoutService: CheckoutService) {
        self.router = router
        self.checkoutService = checkoutService
    }
    
    public func didPressOnFinish() {
        router.closeFlow()
    }
}
