// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Indicates whether or not the eyes on the face are open, and the confidence level in the
///       determination.</p>
public struct EyeOpen: Equatable {
    /// <p>Level of confidence in the determination.</p>
    public let confidence: Float?
    /// <p>Boolean value that indicates whether the eyes on the face are open.</p>
    public let value: Bool

    public init (
        confidence: Float? = nil,
        value: Bool = false
    )
    {
        self.confidence = confidence
        self.value = value
    }
}

extension EyeOpen: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EyeOpen(confidence: \(String(describing: confidence)), value: \(String(describing: value)))"}
}