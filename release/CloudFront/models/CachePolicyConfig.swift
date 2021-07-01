// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A cache policy configuration.</p>
/// 		       <p>This configuration determines the following:</p>
/// 		       <ul>
///             <li>
/// 				           <p>The values that CloudFront includes in the cache key. These values can include HTTP headers,
/// 					cookies, and URL query strings. CloudFront uses the cache key to find an object in its
/// 					cache that it can return to the viewer.</p>
/// 			         </li>
///             <li>
/// 				           <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay
/// 					in the CloudFront cache.</p>
/// 			         </li>
///          </ul>
/// 		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
/// 			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
/// 			find a valid object in its cache that matches the request’s cache key. If you want to
/// 			send values to the origin but <i>not</i> include them in the cache key,
/// 			use <code>OriginRequestPolicy</code>.</p>
public struct CachePolicyConfig: Equatable {
    /// <p>A comment to describe the cache policy. The comment cannot be longer than 128
    /// 			characters.</p>
    public let comment: String?
    /// <p>The default amount of time, in seconds, that you want objects to stay in the CloudFront
    /// 			cache before CloudFront sends another request to the origin to see if the object has been
    /// 			updated. CloudFront uses this value as the object’s time to live (TTL) only when the origin
    /// 			does <i>not</i> send <code>Cache-Control</code> or <code>Expires</code>
    /// 			headers with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
    /// 			<i>Amazon CloudFront Developer Guide</i>.</p>
    /// 		       <p>The default value for this field is 86400 seconds (one day). If the value of
    /// 			<code>MinTTL</code> is more than 86400 seconds, then the default value for this field is
    /// 			the same as the value of <code>MinTTL</code>.</p>
    public let defaultTTL: Int?
    /// <p>The maximum amount of time, in seconds, that objects stay in the CloudFront cache
    /// 			before CloudFront sends another request to the origin to see if the object has been updated.
    /// 			CloudFront uses this value only when the origin sends <code>Cache-Control</code> or
    /// 			<code>Expires</code> headers with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
    /// 			<i>Amazon CloudFront Developer Guide</i>.</p>
    /// 		       <p>The default value for this field is 31536000 seconds (one year). If the value of
    /// 			<code>MinTTL</code> or <code>DefaultTTL</code> is more than 31536000 seconds, then the
    /// 			default value for this field is the same as the value of <code>DefaultTTL</code>.</p>
    public let maxTTL: Int?
    /// <p>The minimum amount of time, in seconds, that you want objects to stay in the CloudFront
    /// 			cache before CloudFront sends another request to the origin to see if the object has been
    /// 			updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
    /// 			<i>Amazon CloudFront Developer Guide</i>.</p>
    public let minTTL: Int?
    /// <p>A unique name to identify the cache policy.</p>
    public let name: String?
    /// <p>The HTTP headers, cookies, and URL query strings to include in the cache key. The
    /// 			values included in the cache key are automatically included in requests that CloudFront sends
    /// 			to the origin.</p>
    public let parametersInCacheKeyAndForwardedToOrigin: ParametersInCacheKeyAndForwardedToOrigin?

    public init (
        comment: String? = nil,
        defaultTTL: Int? = nil,
        maxTTL: Int? = nil,
        minTTL: Int? = nil,
        name: String? = nil,
        parametersInCacheKeyAndForwardedToOrigin: ParametersInCacheKeyAndForwardedToOrigin? = nil
    )
    {
        self.comment = comment
        self.defaultTTL = defaultTTL
        self.maxTTL = maxTTL
        self.minTTL = minTTL
        self.name = name
        self.parametersInCacheKeyAndForwardedToOrigin = parametersInCacheKeyAndForwardedToOrigin
    }
}

extension CachePolicyConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CachePolicyConfig(comment: \(String(describing: comment)), defaultTTL: \(String(describing: defaultTTL)), maxTTL: \(String(describing: maxTTL)), minTTL: \(String(describing: minTTL)), name: \(String(describing: name)), parametersInCacheKeyAndForwardedToOrigin: \(String(describing: parametersInCacheKeyAndForwardedToOrigin)))"}
}