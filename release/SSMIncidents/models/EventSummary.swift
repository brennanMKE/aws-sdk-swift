// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Details about a timeline event during an incident.</p>
public struct EventSummary: Equatable {
    /// <p>The timeline event ID.</p>
    public let eventId: String?
    /// <p>The time that the event occurred.</p>
    public let eventTime: Date?
    /// <p>The type of event. The timeline event must be <code>Custom Event</code>.</p>
    public let eventType: String?
    /// <p>The time that the timeline event was last updated.</p>
    public let eventUpdatedTime: Date?
    /// <p>The Amazon Resource Name (ARN) of the incident that the event happened during.</p>
    public let incidentRecordArn: String?

    public init (
        eventId: String? = nil,
        eventTime: Date? = nil,
        eventType: String? = nil,
        eventUpdatedTime: Date? = nil,
        incidentRecordArn: String? = nil
    )
    {
        self.eventId = eventId
        self.eventTime = eventTime
        self.eventType = eventType
        self.eventUpdatedTime = eventUpdatedTime
        self.incidentRecordArn = incidentRecordArn
    }
}

extension EventSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EventSummary(eventId: \(String(describing: eventId)), eventTime: \(String(describing: eventTime)), eventType: \(String(describing: eventType)), eventUpdatedTime: \(String(describing: eventUpdatedTime)), incidentRecordArn: \(String(describing: incidentRecordArn)))"}
}