// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A label that you assign to a resource. In Athena, a resource can be a workgroup or
///             data catalog. Each tag consists of a key and an optional value, both of which you
///             define. For example, you can use tags to categorize Athena workgroups or data catalogs
///             by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to
///             search and filter workgroups or data catalogs in your account. For best practices, see
///                 <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">Tagging Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode
///             characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use
///             letters and numbers representable in UTF-8, and the following characters: + - = . _ : /
///             @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you
///             specify more than one tag, separate them by commas. </p>
public struct Tag: Equatable {
    /// <p>A tag key. The tag key length is from 1 to 128 Unicode characters in UTF-8. You can
    ///             use letters and numbers representable in UTF-8, and the following characters: + - = . _
    ///             : / @. Tag keys are case-sensitive and must be unique per resource. </p>
    public let key: String?
    /// <p>A tag value. The tag value length is from 0 to 256 Unicode characters in UTF-8. You
    ///             can use letters and numbers representable in UTF-8, and the following characters: + - =
    ///             . _ : / @. Tag values are case-sensitive. </p>
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