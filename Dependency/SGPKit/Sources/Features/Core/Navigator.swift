
public struct Navigator<T: Scene> {
    
    public typealias NavigatingClosure = (_ from: T, _ to: T) -> Void
    
    public let navigate: NavigatingClosure
    
    public let modal: NavigatingClosure
    
    public let dismiss: (_ from: T) -> Void
    
    public init(navigate: @escaping NavigatingClosure, modal: @escaping NavigatingClosure, dismiss: @escaping (_ from: T) -> Void) {
        self.navigate = navigate
        self.modal = modal
        self.dismiss = dismiss
    }
}
