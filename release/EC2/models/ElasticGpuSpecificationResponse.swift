// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an elastic GPU.</p>
public struct ElasticGpuSpecificationResponse: Equatable {
    /// <p>The elastic GPU type.</p>
    public let type: String?

    public init (
        type: String? = nil
    )
    {
        self.type = type
    }
}

extension ElasticGpuSpecificationResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ElasticGpuSpecificationResponse(type: \(String(describing: type)))"}
}