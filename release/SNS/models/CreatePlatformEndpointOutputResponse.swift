// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Response from CreateEndpoint action.</p>
public struct CreatePlatformEndpointOutputResponse: Equatable {
    /// <p>EndpointArn returned from CreateEndpoint action.</p>
    public let endpointArn: String?

    public init (
        endpointArn: String? = nil
    )
    {
        self.endpointArn = endpointArn
    }
}

extension CreatePlatformEndpointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePlatformEndpointOutputResponse(endpointArn: \(String(describing: endpointArn)))"}
}