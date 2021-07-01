// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains metrics captured from a model.</p>
public struct ModelMetrics: Equatable {
    /// <p>Metrics that measure bais in a model.</p>
    public let bias: Bias?
    /// <p>Metrics that help explain a model.</p>
    public let explainability: Explainability?
    /// <p>Metrics that measure the quality of the input data for a model.</p>
    public let modelDataQuality: ModelDataQuality?
    /// <p>Metrics that measure the quality of a model.</p>
    public let modelQuality: ModelQuality?

    public init (
        bias: Bias? = nil,
        explainability: Explainability? = nil,
        modelDataQuality: ModelDataQuality? = nil,
        modelQuality: ModelQuality? = nil
    )
    {
        self.bias = bias
        self.explainability = explainability
        self.modelDataQuality = modelDataQuality
        self.modelQuality = modelQuality
    }
}

extension ModelMetrics: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModelMetrics(bias: \(String(describing: bias)), explainability: \(String(describing: explainability)), modelDataQuality: \(String(describing: modelDataQuality)), modelQuality: \(String(describing: modelQuality)))"}
}