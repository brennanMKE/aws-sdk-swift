// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes whether monitoring is enabled for a Scheduled Instance.</p>
public struct ScheduledInstancesMonitoring: Equatable {
    /// <p>Indicates whether monitoring is enabled.</p>
    public let enabled: Bool

    public init (
        enabled: Bool = false
    )
    {
        self.enabled = enabled
    }
}

extension ScheduledInstancesMonitoring: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ScheduledInstancesMonitoring(enabled: \(String(describing: enabled)))"}
}