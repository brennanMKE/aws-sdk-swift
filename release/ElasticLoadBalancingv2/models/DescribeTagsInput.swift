// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTagsInput: Equatable {
    /// <p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a
    ///       single call.</p>
    public let resourceArns: [String]?

    public init (
        resourceArns: [String]? = nil
    )
    {
        self.resourceArns = resourceArns
    }
}

extension DescribeTagsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTagsInput(resourceArns: \(String(describing: resourceArns)))"}
}