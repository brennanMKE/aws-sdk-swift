// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A key and value pair that is attached to the specified Amazon Lookout for Vision model.</p>
public struct Tag: Equatable {
    /// <p>The key of the tag that is attached to the specified model.</p>
    public let key: String?
    /// <p>The value of the tag that is attached to the specified model.</p>
    public let value: String?

    public init (
        key: String? = nil,
        value: String? = nil
    )
    {
        self.key = key
        self.value = value
    }
}

extension Tag: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Tag(key: \(String(describing: key)), value: \(String(describing: value)))"}
}