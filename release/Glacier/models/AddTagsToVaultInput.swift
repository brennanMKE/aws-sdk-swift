// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input values for <code>AddTagsToVault</code>.</p>
public struct AddTagsToVaultInput: Equatable {
    /// <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    ///          vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    ///          (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    ///          credentials used to sign the request. If you use an account ID, do not include any hyphens
    ///          ('-') in the ID.</p>
    public let accountId: String?
    /// <p>The tags to add to the vault. Each tag is composed of a key and a value. The value
    ///          can be an empty string.</p>
    public let tags: [String:String]?
    /// <p>The name of the vault.</p>
    public let vaultName: String?

    public init (
        accountId: String? = nil,
        tags: [String:String]? = nil,
        vaultName: String? = nil
    )
    {
        self.accountId = accountId
        self.tags = tags
        self.vaultName = vaultName
    }
}

extension AddTagsToVaultInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddTagsToVaultInput(tags: \(String(describing: tags)), accountId: \(String(describing: accountId)), vaultName: \(String(describing: vaultName)))"}
}