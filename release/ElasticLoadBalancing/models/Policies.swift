// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The policies for a load balancer.</p>
public struct Policies: Equatable {
    /// <p>The stickiness policies created using <a>CreateAppCookieStickinessPolicy</a>.</p>
    public let appCookieStickinessPolicies: [AppCookieStickinessPolicy]?
    /// <p>The stickiness policies created using <a>CreateLBCookieStickinessPolicy</a>.</p>
    public let lBCookieStickinessPolicies: [LBCookieStickinessPolicy]?
    /// <p>The policies other than the stickiness policies.</p>
    public let otherPolicies: [String]?

    public init (
        appCookieStickinessPolicies: [AppCookieStickinessPolicy]? = nil,
        lBCookieStickinessPolicies: [LBCookieStickinessPolicy]? = nil,
        otherPolicies: [String]? = nil
    )
    {
        self.appCookieStickinessPolicies = appCookieStickinessPolicies
        self.lBCookieStickinessPolicies = lBCookieStickinessPolicies
        self.otherPolicies = otherPolicies
    }
}

extension Policies: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Policies(appCookieStickinessPolicies: \(String(describing: appCookieStickinessPolicies)), lBCookieStickinessPolicies: \(String(describing: lBCookieStickinessPolicies)), otherPolicies: \(String(describing: otherPolicies)))"}
}