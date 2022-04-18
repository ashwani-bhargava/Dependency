import Foundation


protocol CheckOutRoutable: Router {
    func closeFlow()
}

class CheckOutRouter<T: Scene>: CheckOutRoutable {
    
    private let sceneFactory: SceneFactory<T>
    let navigator: Navigator<T>
    weak var source: T?
    init(sceneFactory: SceneFactory<T>,
         navigator: Navigator<T>,
         previewBuilder: Buildable) {
        self.sceneFactory = sceneFactory
        self.navigator = navigator
    }
    
    func closeFlow() {
        guard let source = source else { return }
        navigator.dismiss(source)
    }
}
