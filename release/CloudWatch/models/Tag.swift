// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A key-value pair associated with a CloudWatch resource.</p>
public struct Tag: Equatable {
    /// <p>A string that you can use to assign a value. The combination of tag keys and values can help you organize and categorize your
    /// 		resources.</p>
    public let key: String?
    /// <p>The value for the specified tag key.</p>
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