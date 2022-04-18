protocol PreviewRoutable: Router {
    func routeToCheckout()
}

class PreviewRouter<T: Scene>: PreviewRoutable {
    private let sceneFactory: SceneFactory<T>
    let navigator: Navigator<T>
    weak var source: T?
    
    let checkOutBuilder: Buildable
    
    init(sceneFactory: SceneFactory<T>,
         navigator: Navigator<T>,
         checkOutBuilder: Buildable) {
        self.sceneFactory = sceneFactory
        self.navigator = navigator
        self.checkOutBuilder = checkOutBuilder
    }
    
    func routeToCheckout() {
        let scene = checkOutBuilder.build(sceneFactory: sceneFactory, navigator: navigator)
        guard let source = source else {
            return
        }
        navigator.navigate(source, scene)
    }
}

