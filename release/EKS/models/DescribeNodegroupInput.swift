// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeNodegroupInput: Equatable {
    /// <p>The name of the Amazon EKS cluster associated with the node group.</p>
    public let clusterName: String?
    /// <p>The name of the node group to describe.</p>
    public let nodegroupName: String?

    public init (
        clusterName: String? = nil,
        nodegroupName: String? = nil
    )
    {
        self.clusterName = clusterName
        self.nodegroupName = nodegroupName
    }
}

extension DescribeNodegroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeNodegroupInput(clusterName: \(String(describing: clusterName)), nodegroupName: \(String(describing: nodegroupName)))"}
}