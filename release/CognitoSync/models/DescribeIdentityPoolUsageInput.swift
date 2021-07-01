// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// A request for usage information about
///       the identity pool.
public struct DescribeIdentityPoolUsageInput: Equatable {
    /// A name-spaced GUID (for
    ///       example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    ///       generation is unique within a region.
    public let identityPoolId: String?

    public init (
        identityPoolId: String? = nil
    )
    {
        self.identityPoolId = identityPoolId
    }
}

extension DescribeIdentityPoolUsageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeIdentityPoolUsageInput(identityPoolId: \(String(describing: identityPoolId)))"}
}