// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the monitoring of an instance.</p>
public struct Monitoring: Equatable {
    /// <p>Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is
    ///             enabled.</p>
    public let state: MonitoringState?

    public init (
        state: MonitoringState? = nil
    )
    {
        self.state = state
    }
}

extension Monitoring: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Monitoring(state: \(String(describing: state)))"}
}