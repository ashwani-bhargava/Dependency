
import BusinessLogic
public protocol CheckoutDependency: Dependency {
    var previewBuilder: PreviewBuilder { get }
    
    var checkoutService: CheckoutService { get }
}

class CheckoutComponent: Component<RootDependency>, CheckoutDependency {
    var previewBuilder: PreviewBuilder {
        return PreviewBuilder(dependency: PreviewComponent(dependency: dependency))
    }
    
    var checkoutService: CheckoutService {
        return CheckoutProvider(networkService: dependency.networkService)
    }
}
