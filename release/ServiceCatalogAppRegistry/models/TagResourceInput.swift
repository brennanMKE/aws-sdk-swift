// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The Amazon resource name (ARN) that specifies the resource.</p>
    public let resourceArn: String?
    /// <p>The new or modified tags for the resource.</p>
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