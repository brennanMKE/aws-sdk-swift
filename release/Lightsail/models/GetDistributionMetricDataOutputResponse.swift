// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetDistributionMetricDataOutputResponse: Equatable {
    /// <p>An array of objects that describe the metric data returned.</p>
    public let metricData: [MetricDatapoint]?
    /// <p>The name of the metric returned.</p>
    public let metricName: DistributionMetricName?

    public init (
        metricData: [MetricDatapoint]? = nil,
        metricName: DistributionMetricName? = nil
    )
    {
        self.metricData = metricData
        self.metricName = metricName
    }
}

extension GetDistributionMetricDataOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDistributionMetricDataOutputResponse(metricData: \(String(describing: metricData)), metricName: \(String(describing: metricName)))"}
}