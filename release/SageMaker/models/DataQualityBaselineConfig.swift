// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration for monitoring constraints and monitoring statistics. These baseline
///          resources are compared against the results of the current job from the series of jobs
///          scheduled to collect data periodically.</p>
public struct DataQualityBaselineConfig: Equatable {
    /// <p>The name of the job that performs baselining for the data quality monitoring job.</p>
    public let baseliningJobName: String?
    /// <p>The constraints resource for a monitoring job.</p>
    public let constraintsResource: MonitoringConstraintsResource?
    /// <p>The statistics resource for a monitoring job.</p>
    public let statisticsResource: MonitoringStatisticsResource?

    public init (
        baseliningJobName: String? = nil,
        constraintsResource: MonitoringConstraintsResource? = nil,
        statisticsResource: MonitoringStatisticsResource? = nil
    )
    {
        self.baseliningJobName = baseliningJobName
        self.constraintsResource = constraintsResource
        self.statisticsResource = statisticsResource
    }
}

extension DataQualityBaselineConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DataQualityBaselineConfig(baseliningJobName: \(String(describing: baseliningJobName)), constraintsResource: \(String(describing: constraintsResource)), statisticsResource: \(String(describing: statisticsResource)))"}
}