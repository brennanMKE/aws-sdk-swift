// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines the possible values for a continuous hyperparameter.</p>
public struct ContinuousParameterRangeSpecification: Equatable {
    /// <p>The maximum floating-point value allowed.</p>
    public let maxValue: String?
    /// <p>The minimum floating-point value allowed.</p>
    public let minValue: String?

    public init (
        maxValue: String? = nil,
        minValue: String? = nil
    )
    {
        self.maxValue = maxValue
        self.minValue = minValue
    }
}

extension ContinuousParameterRangeSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ContinuousParameterRangeSpecification(maxValue: \(String(describing: maxValue)), minValue: \(String(describing: minValue)))"}
}