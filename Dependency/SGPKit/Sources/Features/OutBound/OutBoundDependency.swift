
import BusinessLogic

public protocol OutBoundDependency: Dependency {
    var previewBuilder: Buildable { get }
}

class OutBoundComponent: Component<Void>, OutBoundDependency {
    var previewBuilder: Buildable {
        return PreviewBuilder(dependency: PreviewComponent(dependency: RootComponent.sharedInstance))
    }
}
