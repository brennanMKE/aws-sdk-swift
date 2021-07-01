// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeVpcEndpointServiceConfigurationsOutputResponse: Equatable {
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?
    /// <p>Information about one or more services.</p>
    public let serviceConfigurations: [ServiceConfiguration]?

    public init (
        nextToken: String? = nil,
        serviceConfigurations: [ServiceConfiguration]? = nil
    )
    {
        self.nextToken = nextToken
        self.serviceConfigurations = serviceConfigurations
    }
}

extension DescribeVpcEndpointServiceConfigurationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeVpcEndpointServiceConfigurationsOutputResponse(nextToken: \(String(describing: nextToken)), serviceConfigurations: \(String(describing: serviceConfigurations)))"}
}