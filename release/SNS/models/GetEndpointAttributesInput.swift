// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input for GetEndpointAttributes action.</p>
public struct GetEndpointAttributesInput: Equatable {
    /// <p>EndpointArn for GetEndpointAttributes input.</p>
    public let endpointArn: String?

    public init (
        endpointArn: String? = nil
    )
    {
        self.endpointArn = endpointArn
    }
}

extension GetEndpointAttributesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetEndpointAttributesInput(endpointArn: \(String(describing: endpointArn)))"}
}