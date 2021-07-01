// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the returned data in response to a request operation.</p>
public struct DescribeInstancesOutputResponse: Equatable {
    /// <p>A collection of objects containing properties for each instance returned.</p>
    public let instances: [Instance]?
    /// <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    public let nextToken: String?

    public init (
        instances: [Instance]? = nil,
        nextToken: String? = nil
    )
    {
        self.instances = instances
        self.nextToken = nextToken
    }
}

extension DescribeInstancesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeInstancesOutputResponse(instances: \(String(describing: instances)), nextToken: \(String(describing: nextToken)))"}
}