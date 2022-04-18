

import Foundation
public protocol PreviewDependency: Dependency {
    var checkOutBuilder: Buildable { get }
}

class PreviewComponent: Component<RootDependency>, PreviewDependency {
    var checkOutBuilder: Buildable {
        return CheckOutBuilder( dependency: CheckoutComponent(dependency: dependency))
    }
}
