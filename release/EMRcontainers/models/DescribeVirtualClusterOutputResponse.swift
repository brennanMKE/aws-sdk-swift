// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeVirtualClusterOutputResponse: Equatable {
    /// <p>This output displays information about the specified virtual cluster.</p>
    public let virtualCluster: VirtualCluster?

    public init (
        virtualCluster: VirtualCluster? = nil
    )
    {
        self.virtualCluster = virtualCluster
    }
}

extension DescribeVirtualClusterOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeVirtualClusterOutputResponse(virtualCluster: \(String(describing: virtualCluster)))"}
}