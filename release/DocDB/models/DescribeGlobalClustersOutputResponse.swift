// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeGlobalClustersOutputResponse: Equatable {
    /// <p></p>
    public let globalClusters: [GlobalCluster]?
    /// <p></p>
    public let marker: String?

    public init (
        globalClusters: [GlobalCluster]? = nil,
        marker: String? = nil
    )
    {
        self.globalClusters = globalClusters
        self.marker = marker
    }
}

extension DescribeGlobalClustersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeGlobalClustersOutputResponse(globalClusters: \(String(describing: globalClusters)), marker: \(String(describing: marker)))"}
}