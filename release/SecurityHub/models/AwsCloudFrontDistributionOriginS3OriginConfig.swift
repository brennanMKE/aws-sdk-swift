// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about an origin that is an S3 bucket that is not configured with static
///          website hosting.</p>
public struct AwsCloudFrontDistributionOriginS3OriginConfig: Equatable {
    /// <p>The CloudFront origin access identity to associate with the origin.</p>
    public let originAccessIdentity: String?

    public init (
        originAccessIdentity: String? = nil
    )
    {
        self.originAccessIdentity = originAccessIdentity
    }
}

extension AwsCloudFrontDistributionOriginS3OriginConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsCloudFrontDistributionOriginS3OriginConfig(originAccessIdentity: \(String(describing: originAccessIdentity)))"}
}