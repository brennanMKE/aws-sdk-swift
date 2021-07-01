// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAvailableManagedRuleGroupsInput: Equatable {
    /// <p>The maximum number of objects that you want AWS WAF to return for this request. If more
    ///           objects are available, in the response, AWS WAF provides a
    ///          <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    public let limit: Int?
    /// <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    ///          for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code>
    ///          value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    public let nextMarker: String?
    /// <p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
    ///          <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    ///          <ul>
    ///             <li>
    ///                <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    ///             </li>
    ///             <li>
    ///                <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    ///             </li>
    ///          </ul>
    public let scope: Scope?

    public init (
        limit: Int? = nil,
        nextMarker: String? = nil,
        scope: Scope? = nil
    )
    {
        self.limit = limit
        self.nextMarker = nextMarker
        self.scope = scope
    }
}

extension ListAvailableManagedRuleGroupsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAvailableManagedRuleGroupsInput(limit: \(String(describing: limit)), nextMarker: \(String(describing: nextMarker)), scope: \(String(describing: scope)))"}
}