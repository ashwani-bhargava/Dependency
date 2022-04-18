
import Foundation

public protocol BookingService {
    func getBookingInformation() -> String
}

public class BookingProvider: BookingService {
    public init() {}
    public func getBookingInformation() -> String {
        return "Booking information"
    }
}
