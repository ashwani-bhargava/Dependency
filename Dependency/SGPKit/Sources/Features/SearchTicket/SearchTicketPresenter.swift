
import BusinessLogic

public protocol SearchTicketPresentable {
    func didTapOnNext()
}

public class SearchTicketPresenter: SearchTicketPresentable {
    
    let router: SearchTicketRoutable
    
    init(router: SearchTicketRoutable) {
        self.router = router
    }
    
    public func didTapOnNext() {
        router.routeToOutBound()
    }
}
