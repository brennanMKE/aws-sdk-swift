// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
/// 			A time range that specifies when the observed unusual behavior in an anomaly started and ended.
/// 		</p>
public struct AnomalyTimeRange: Equatable {
    /// <p> The time when the anomalous behavior ended. </p>
    public let endTime: Date?
    /// <p>
    /// 			The time when the anomalous behavior started.
    /// 		</p>
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

extension AnomalyTimeRange: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AnomalyTimeRange(endTime: \(String(describing: endTime)), startTime: \(String(describing: startTime)))"}
}