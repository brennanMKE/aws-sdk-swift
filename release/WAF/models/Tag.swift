// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <note>
///             <p>This is <b>AWS WAF Classic</b> documentation. For
///       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
///       WAF Classic</a> in the developer guide.</p>
///             <p>
///                <b>For the latest version of AWS
///       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
///          </note>
///         <p>A tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
///         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
public struct Tag: Equatable {
    /// <p></p>
    public let key: String?
    /// <p></p>
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