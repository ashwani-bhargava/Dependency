import BusinessLogic
public protocol SearchTicketDependency: Dependency {
    var outBoundBuilder: Buildable { get }
    var bookingService: BookingService { get }
}

class SearchTicketComponent: Component<Void>, SearchTicketDependency {
    
    var outBoundBuilder: Buildable {
        return OutBoundBuilder(dependency: OutBoundComponent(dependency: ()))
    }
    
    var bookingService: BookingService {
        return BookingProvider()
    }
}
