// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RejectVpcEndpointConnectionsOutputResponse: Equatable {
    /// <p>Information about the endpoints that were not rejected, if applicable.</p>
    public let unsuccessful: [UnsuccessfulItem]?

    public init (
        unsuccessful: [UnsuccessfulItem]? = nil
    )
    {
        self.unsuccessful = unsuccessful
    }
}

extension RejectVpcEndpointConnectionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RejectVpcEndpointConnectionsOutputResponse(unsuccessful: \(String(describing: unsuccessful)))"}
}