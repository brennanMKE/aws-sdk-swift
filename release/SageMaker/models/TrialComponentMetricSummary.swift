// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A summary of the metrics of a trial component.</p>
public struct TrialComponentMetricSummary: Equatable {
    /// <p>The average value of the metric.</p>
    public let avg: Double?
    /// <p>The number of samples used to generate the metric.</p>
    public let count: Int?
    /// <p>The most recent value of the metric.</p>
    public let last: Double?
    /// <p>The maximum value of the metric.</p>
    public let max: Double?
    /// <p>The name of the metric.</p>
    public let metricName: String?
    /// <p>The minimum value of the metric.</p>
    public let min: Double?
    /// <p>The Amazon Resource Name (ARN) of the source.</p>
    public let sourceArn: String?
    /// <p>The standard deviation of the metric.</p>
    public let stdDev: Double?
    /// <p>When the metric was last updated.</p>
    public let timeStamp: Date?

    public init (
        avg: Double? = nil,
        count: Int? = nil,
        last: Double? = nil,
        max: Double? = nil,
        metricName: String? = nil,
        min: Double? = nil,
        sourceArn: String? = nil,
        stdDev: Double? = nil,
        timeStamp: Date? = nil
    )
    {
        self.avg = avg
        self.count = count
        self.last = last
        self.max = max
        self.metricName = metricName
        self.min = min
        self.sourceArn = sourceArn
        self.stdDev = stdDev
        self.timeStamp = timeStamp
    }
}

extension TrialComponentMetricSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TrialComponentMetricSummary(avg: \(String(describing: avg)), count: \(String(describing: count)), last: \(String(describing: last)), max: \(String(describing: max)), metricName: \(String(describing: metricName)), min: \(String(describing: min)), sourceArn: \(String(describing: sourceArn)), stdDev: \(String(describing: stdDev)), timeStamp: \(String(describing: timeStamp)))"}
}