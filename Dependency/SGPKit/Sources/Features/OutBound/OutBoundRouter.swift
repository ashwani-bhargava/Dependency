protocol OutBoundRoutable: Router {
    func routeToPreview()
}

class OutBoundRouter<T: Scene>: OutBoundRoutable {
    
    private let sceneFactory: SceneFactory<T>
    let navigator: Navigator<T>
    weak var source: T?
    
    let previewBuilder: Buildable
    
    init(sceneFactory: SceneFactory<T>,
         navigator: Navigator<T>,
         previewBuilder: Buildable) {
        self.sceneFactory = sceneFactory
        self.navigator = navigator
        self.previewBuilder = previewBuilder
    }
    
    func routeToPreview() {
        let scene = previewBuilder.build(sceneFactory: sceneFactory,
                             navigator: navigator)
        guard let source = source else {
            return
        }
        navigator.navigate(source, scene)
    }
}
