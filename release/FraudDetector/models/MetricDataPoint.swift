// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Model performance metrics data points.</p>
public struct MetricDataPoint: Equatable {
    /// <p>The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.</p>
    public let fpr: Float?
    /// <p>The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.</p>
    public let precision: Float?
    /// <p>The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is labeled as fraud.</p>
    public let threshold: Float?
    /// <p>The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.</p>
    public let tpr: Float?

    public init (
        fpr: Float? = nil,
        precision: Float? = nil,
        threshold: Float? = nil,
        tpr: Float? = nil
    )
    {
        self.fpr = fpr
        self.precision = precision
        self.threshold = threshold
        self.tpr = tpr
    }
}

extension MetricDataPoint: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MetricDataPoint(fpr: \(String(describing: fpr)), precision: \(String(describing: precision)), threshold: \(String(describing: threshold)), tpr: \(String(describing: tpr)))"}
}