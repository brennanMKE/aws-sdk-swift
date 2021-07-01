// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The data-volume encryption details.</p>
public struct EncryptionAtRest: Equatable {
    /// <p>The ARN of the AWS KMS key for encrypting data at rest. If you don't specify a KMS key, MSK creates one for you and uses it.</p>
    public let dataVolumeKMSKeyId: String?

    public init (
        dataVolumeKMSKeyId: String? = nil
    )
    {
        self.dataVolumeKMSKeyId = dataVolumeKMSKeyId
    }
}

extension EncryptionAtRest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EncryptionAtRest(dataVolumeKMSKeyId: \(String(describing: dataVolumeKMSKeyId)))"}
}