
import Foundation
import SwiftUI
import Features
class PreviewViewController: UIHostingController<PreviewView> {
    init(presenter: PreviewPresentable) {
        let observer = ObservablePreview(presenter: presenter)
        let view = PreviewView(observer: observer)
        super.init(rootView: view)
        self.title = "Preview Tickets"
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
