// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeServicesInput: Equatable {
    /// <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe.
    /// 			If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are
    /// 			describing were launched in any cluster other than the default cluster.</p>
    public let cluster: String?
    /// <p>Specifies whether you want to see the resource tags for the service. If
    /// 				<code>TAGS</code> is specified, the tags are included in the response. If this field
    /// 			is omitted, tags are not included in the response.</p>
    public let include: [ServiceField]?
    /// <p>A list of services to describe. You may specify up to 10 services to describe in a
    /// 			single operation.</p>
    public let services: [String]?

    public init (
        cluster: String? = nil,
        include: [ServiceField]? = nil,
        services: [String]? = nil
    )
    {
        self.cluster = cluster
        self.include = include
        self.services = services
    }
}

extension DescribeServicesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeServicesInput(cluster: \(String(describing: cluster)), include: \(String(describing: include)), services: \(String(describing: services)))"}
}