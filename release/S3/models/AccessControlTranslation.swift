// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A container for information about access control for replicas.</p>
public struct AccessControlTranslation: Equatable {
    /// <p>Specifies the replica ownership. For default and valid values, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT bucket
    ///             replication</a> in the <i>Amazon S3 API Reference</i>.</p>
    public let owner: OwnerOverride?

    public init (
        owner: OwnerOverride? = nil
    )
    {
        self.owner = owner
    }
}

extension AccessControlTranslation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccessControlTranslation(owner: \(String(describing: owner)))"}
}