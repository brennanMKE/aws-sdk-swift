// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the output of RegisterInstancesWithLoadBalancer.</p>
public struct RegisterInstancesWithLoadBalancerOutputResponse: Equatable {
    /// <p>The updated list of instances for the load balancer.</p>
    public let instances: [Instance]?

    public init (
        instances: [Instance]? = nil
    )
    {
        self.instances = instances
    }
}

extension RegisterInstancesWithLoadBalancerOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterInstancesWithLoadBalancerOutputResponse(instances: \(String(describing: instances)))"}
}