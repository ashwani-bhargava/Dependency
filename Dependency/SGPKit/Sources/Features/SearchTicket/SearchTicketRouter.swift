protocol SearchTicketRoutable: Router {
    func routeToOutBound()
}

class SearchTicketRouter<T: Scene>: SearchTicketRoutable {
    private let sceneFactory: SceneFactory<T>
    let navigator: Navigator<T>
    weak var source: T?
    
    let outBoundBuilder: Buildable
    
    init(sceneFactory: SceneFactory<T>,
         navigator: Navigator<T>,
         outBoundBuilder: Buildable) {
        self.sceneFactory = sceneFactory
        self.navigator = navigator
        self.outBoundBuilder = outBoundBuilder
    }
    
    func routeToOutBound() {
        let scene = outBoundBuilder.build(sceneFactory: sceneFactory, navigator: navigator)
        guard let source = source else {
            return
        }
        
        navigator.navigate(source, scene)
    }
}

