// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The optional metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
///          <p>The following basic restrictions apply to tags:</p>
///          <ul>
///             <li>
///                <p>Maximum number of tags per resource - 50.</p>
///             </li>
///             <li>
///                <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
///             </li>
///             <li>
///                <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
///             </li>
///             <li>
///                <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
///             </li>
///             <li>
///                <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
///             </li>
///             <li>
///                <p>Tag keys and values are case sensitive.</p>
///             </li>
///             <li>
///                <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
///             </li>
///          </ul>
public struct Tag: Equatable {
    /// <p>One part of a key-value pair that makes up a tag. A <code>key</code> is a general label that acts like a category for more specific tag values.</p>
    public let key: String?
    /// <p>The optional part of a key-value pair that makes up a tag. A <code>value</code> acts as a descriptor within a tag category (key).</p>
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