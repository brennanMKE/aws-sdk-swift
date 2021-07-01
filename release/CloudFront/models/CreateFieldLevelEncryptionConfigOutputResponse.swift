// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateFieldLevelEncryptionConfigOutputResponse: Equatable {
    /// <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    public let eTag: String?
    /// <p>Returned when you create a new field-level encryption configuration.</p>
    public let fieldLevelEncryption: FieldLevelEncryption?
    /// <p>The fully qualified URI of the new configuration resource just created.</p>
    public let location: String?

    public init (
        eTag: String? = nil,
        fieldLevelEncryption: FieldLevelEncryption? = nil,
        location: String? = nil
    )
    {
        self.eTag = eTag
        self.fieldLevelEncryption = fieldLevelEncryption
        self.location = location
    }
}

extension CreateFieldLevelEncryptionConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFieldLevelEncryptionConfigOutputResponse(eTag: \(String(describing: eTag)), fieldLevelEncryption: \(String(describing: fieldLevelEncryption)), location: \(String(describing: location)))"}
}