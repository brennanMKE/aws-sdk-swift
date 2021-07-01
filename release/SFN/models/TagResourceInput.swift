// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    public let resourceArn: String?
    /// <p>The list of tags to add to a resource.</p>
    ///          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    public let tags: [Tag]?

    public init (
        resourceArn: String? = nil,
        tags: [Tag]? = nil
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