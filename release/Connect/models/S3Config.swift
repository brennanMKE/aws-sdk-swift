// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the Amazon Simple Storage Service (Amazon S3) storage type.</p>
public struct S3Config: Equatable {
    /// <p>The S3 bucket name.</p>
    public let bucketName: String?
    /// <p>The S3 bucket prefix.</p>
    public let bucketPrefix: String?
    /// <p>The Amazon S3 encryption configuration.</p>
    public let encryptionConfig: EncryptionConfig?

    public init (
        bucketName: String? = nil,
        bucketPrefix: String? = nil,
        encryptionConfig: EncryptionConfig? = nil
    )
    {
        self.bucketName = bucketName
        self.bucketPrefix = bucketPrefix
        self.encryptionConfig = encryptionConfig
    }
}

extension S3Config: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3Config(bucketName: \(String(describing: bucketName)), bucketPrefix: \(String(describing: bucketPrefix)), encryptionConfig: \(String(describing: encryptionConfig)))"}
}