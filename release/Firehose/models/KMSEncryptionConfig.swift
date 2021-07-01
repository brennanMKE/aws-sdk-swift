// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an encryption key for a destination in Amazon S3.</p>
public struct KMSEncryptionConfig: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the encryption key. Must belong to the same AWS
    ///          Region as the destination Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    ///             Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    public let aWSKMSKeyARN: String?

    public init (
        aWSKMSKeyARN: String? = nil
    )
    {
        self.aWSKMSKeyARN = aWSKMSKeyARN
    }
}

extension KMSEncryptionConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KMSEncryptionConfig(aWSKMSKeyARN: \(String(describing: aWSKMSKeyARN)))"}
}