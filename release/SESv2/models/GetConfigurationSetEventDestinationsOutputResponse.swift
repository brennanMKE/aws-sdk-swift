// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about an event destination for a configuration set.</p>
public struct GetConfigurationSetEventDestinationsOutputResponse: Equatable {
    /// <p>An array that includes all of the events destinations that have been configured for
    ///             the configuration set.</p>
    public let eventDestinations: [EventDestination]?

    public init (
        eventDestinations: [EventDestination]? = nil
    )
    {
        self.eventDestinations = eventDestinations
    }
}

extension GetConfigurationSetEventDestinationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetConfigurationSetEventDestinationsOutputResponse(eventDestinations: \(String(describing: eventDestinations)))"}
}