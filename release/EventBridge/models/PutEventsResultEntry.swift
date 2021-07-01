// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents an event that failed to be submitted.</p>
public struct PutEventsResultEntry: Equatable {
    /// <p>The error code that indicates why the event submission failed.</p>
    public let errorCode: String?
    /// <p>The error message that explains why the event submission failed.</p>
    public let errorMessage: String?
    /// <p>The ID of the event.</p>
    public let eventId: String?

    public init (
        errorCode: String? = nil,
        errorMessage: String? = nil,
        eventId: String? = nil
    )
    {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.eventId = eventId
    }
}

extension PutEventsResultEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutEventsResultEntry(errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), eventId: \(String(describing: eventId)))"}
}