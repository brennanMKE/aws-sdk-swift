// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteSamplingRuleOutputResponse: Equatable {
    /// <p>The deleted rule definition and metadata.</p>
    public let samplingRuleRecord: SamplingRuleRecord?

    public init (
        samplingRuleRecord: SamplingRuleRecord? = nil
    )
    {
        self.samplingRuleRecord = samplingRuleRecord
    }
}

extension DeleteSamplingRuleOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteSamplingRuleOutputResponse(samplingRuleRecord: \(String(describing: samplingRuleRecord)))"}
}