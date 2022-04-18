import Foundation
import Features

public class ObservableSearchTicket: ObservableObject {
    
    private var presenter: SearchTicketPresentable
    
    public init(presenter: SearchTicketPresentable) {
        self.presenter = presenter
    }

}

extension ObservableSearchTicket {
    func performAction() {
        presenter.didTapOnNext()
    }
}
