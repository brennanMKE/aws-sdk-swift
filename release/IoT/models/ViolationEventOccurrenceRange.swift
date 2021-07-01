// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
///             Specifies the time period of which violation events occurred between.
///         </p>
public struct ViolationEventOccurrenceRange: Equatable {
    /// <p>
    ///             The end date and time of a time period in which violation events occurred.
    ///         </p>
    public let endTime: Date?
    /// <p>
    ///             The start date and time of a time period in which violation events occurred.
    ///         </p>
    public let startTime: Date?

    public init (
        endTime: Date? = nil,
        startTime: Date? = nil
    )
    {
        self.endTime = endTime
        self.startTime = startTime
    }
}

extension ViolationEventOccurrenceRange: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ViolationEventOccurrenceRange(endTime: \(String(describing: endTime)), startTime: \(String(describing: startTime)))"}
}