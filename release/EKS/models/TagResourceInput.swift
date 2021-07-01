// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the supported resources
    ///             are Amazon EKS clusters and managed node groups.</p>
    public let resourceArn: String?
    /// <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    public let tags: [String:String]?

    public init (
        resourceArn: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tags = tags
    }
}

extension TagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagResourceInput(resourceArn: \(String(describing: resourceArn)), tags: \(String(describing: tags)))"}
}