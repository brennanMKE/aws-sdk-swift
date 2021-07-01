// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The description of the Time to Live (TTL) status on the specified table. </p>
public struct TimeToLiveDescription: Equatable {
    /// <p> The name of the TTL attribute for items in the table.</p>
    public let attributeName: String?
    /// <p> The TTL status for the table.</p>
    public let timeToLiveStatus: TimeToLiveStatus?

    public init (
        attributeName: String? = nil,
        timeToLiveStatus: TimeToLiveStatus? = nil
    )
    {
        self.attributeName = attributeName
        self.timeToLiveStatus = timeToLiveStatus
    }
}

extension TimeToLiveDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TimeToLiveDescription(attributeName: \(String(describing: attributeName)), timeToLiveStatus: \(String(describing: timeToLiveStatus)))"}
}