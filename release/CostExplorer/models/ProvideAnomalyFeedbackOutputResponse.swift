// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ProvideAnomalyFeedbackOutputResponse: Equatable {
    /// <p>
    ///       The ID of the modified cost anomaly.
    ///     </p>
    public let anomalyId: String?

    public init (
        anomalyId: String? = nil
    )
    {
        self.anomalyId = anomalyId
    }
}

extension ProvideAnomalyFeedbackOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProvideAnomalyFeedbackOutputResponse(anomalyId: \(String(describing: anomalyId)))"}
}