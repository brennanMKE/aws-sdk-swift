// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateEndpointGroupOutputResponse: Equatable {
    /// <p>The information about the endpoint group that was updated.</p>
    public let endpointGroup: EndpointGroup?

    public init (
        endpointGroup: EndpointGroup? = nil
    )
    {
        self.endpointGroup = endpointGroup
    }
}

extension UpdateEndpointGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateEndpointGroupOutputResponse(endpointGroup: \(String(describing: endpointGroup)))"}
}