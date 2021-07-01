// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeInstanceStatusOutputResponse: Equatable {
    /// <p>Information about the status of the instances.</p>
    public let instanceStatuses: [InstanceStatus]?
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code>
    ///             when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        instanceStatuses: [InstanceStatus]? = nil,
        nextToken: String? = nil
    )
    {
        self.instanceStatuses = instanceStatuses
        self.nextToken = nextToken
    }
}

extension DescribeInstanceStatusOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeInstanceStatusOutputResponse(instanceStatuses: \(String(describing: instanceStatuses)), nextToken: \(String(describing: nextToken)))"}
}