// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about the bucket level permissions for the S3 bucket.</p>
public struct BucketLevelPermissions: Equatable {
    /// <p>Contains information on how Access Control Policies are applied to the bucket.</p>
    public let accessControlList: AccessControlList?
    /// <p>Contains information on which account level S3 Block Public Access settings are applied to
    ///       the S3 bucket.</p>
    public let blockPublicAccess: BlockPublicAccess?
    /// <p>Contains information on the bucket policies for the S3 bucket.</p>
    public let bucketPolicy: BucketPolicy?

    public init (
        accessControlList: AccessControlList? = nil,
        blockPublicAccess: BlockPublicAccess? = nil,
        bucketPolicy: BucketPolicy? = nil
    )
    {
        self.accessControlList = accessControlList
        self.blockPublicAccess = blockPublicAccess
        self.bucketPolicy = bucketPolicy
    }
}

extension BucketLevelPermissions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BucketLevelPermissions(accessControlList: \(String(describing: accessControlList)), blockPublicAccess: \(String(describing: blockPublicAccess)), bucketPolicy: \(String(describing: bucketPolicy)))"}
}