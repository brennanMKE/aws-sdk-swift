// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListManagedEndpointsOutputResponse: Equatable {
    /// <p>The managed endpoints to be listed.</p>
    public let endpoints: [Endpoint]?
    /// <p> The token for the next set of endpoints to return. </p>
    public let nextToken: String?

    public init (
        endpoints: [Endpoint]? = nil,
        nextToken: String? = nil
    )
    {
        self.endpoints = endpoints
        self.nextToken = nextToken
    }
}

extension ListManagedEndpointsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListManagedEndpointsOutputResponse(endpoints: \(String(describing: endpoints)), nextToken: \(String(describing: nextToken)))"}
}