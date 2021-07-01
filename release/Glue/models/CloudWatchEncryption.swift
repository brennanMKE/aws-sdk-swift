// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies how Amazon CloudWatch data should be encrypted.</p>
public struct CloudWatchEncryption: Equatable {
    /// <p>The encryption mode to use for CloudWatch data.</p>
    public let cloudWatchEncryptionMode: CloudWatchEncryptionMode?
    /// <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    public let kmsKeyArn: String?

    public init (
        cloudWatchEncryptionMode: CloudWatchEncryptionMode? = nil,
        kmsKeyArn: String? = nil
    )
    {
        self.cloudWatchEncryptionMode = cloudWatchEncryptionMode
        self.kmsKeyArn = kmsKeyArn
    }
}

extension CloudWatchEncryption: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloudWatchEncryption(cloudWatchEncryptionMode: \(String(describing: cloudWatchEncryptionMode)), kmsKeyArn: \(String(describing: kmsKeyArn)))"}
}