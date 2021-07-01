// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AllowCustomRoutingTrafficInput: Equatable {
    /// <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic
    /// 			from a custom routing accelerator. The value is TRUE or FALSE. </p>
    /// 		       <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note
    /// 			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    /// 		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed
    /// 			to receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    /// 			the same as the ports configured for the endpoint group.</p>
    /// 		       <p>The default value is FALSE.</p>
    public let allowAllTrafficToEndpoint: Bool?
    /// <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive
    /// 			traffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>
    /// 		       <p>
    ///             <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is
    /// 		not specified.</p>
    public let destinationAddresses: [String]?
    /// <p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>
    public let destinationPorts: [Int]?
    /// <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    public let endpointGroupArn: String?
    /// <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    public let endpointId: String?

    public init (
        allowAllTrafficToEndpoint: Bool? = nil,
        destinationAddresses: [String]? = nil,
        destinationPorts: [Int]? = nil,
        endpointGroupArn: String? = nil,
        endpointId: String? = nil
    )
    {
        self.allowAllTrafficToEndpoint = allowAllTrafficToEndpoint
        self.destinationAddresses = destinationAddresses
        self.destinationPorts = destinationPorts
        self.endpointGroupArn = endpointGroupArn
        self.endpointId = endpointId
    }
}

extension AllowCustomRoutingTrafficInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AllowCustomRoutingTrafficInput(allowAllTrafficToEndpoint: \(String(describing: allowAllTrafficToEndpoint)), destinationAddresses: \(String(describing: destinationAddresses)), destinationPorts: \(String(describing: destinationPorts)), endpointGroupArn: \(String(describing: endpointGroupArn)), endpointId: \(String(describing: endpointId)))"}
}