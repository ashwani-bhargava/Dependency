
import Foundation
import Features
public class ObservablePreview: ObservableObject {
    
    private var presenter: PreviewPresentable
    
    public init(presenter: PreviewPresentable) {
        self.presenter = presenter
    }

}

extension ObservablePreview {
    func performAction() {
        presenter.didTapOnCheckout()
    }
}
