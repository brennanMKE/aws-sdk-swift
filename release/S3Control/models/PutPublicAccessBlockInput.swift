// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutPublicAccessBlockInput: Equatable {
    /// <p>The account ID for the AWS account whose <code>PublicAccessBlock</code> configuration you want
    ///          to set.</p>
    public let accountId: String?
    /// <p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified AWS
    ///          account.</p>
    public let publicAccessBlockConfiguration: PublicAccessBlockConfiguration?

    public init (
        accountId: String? = nil,
        publicAccessBlockConfiguration: PublicAccessBlockConfiguration? = nil
    )
    {
        self.accountId = accountId
        self.publicAccessBlockConfiguration = publicAccessBlockConfiguration
    }
}

extension PutPublicAccessBlockInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutPublicAccessBlockInput(accountId: \(String(describing: accountId)), publicAccessBlockConfiguration: \(String(describing: publicAccessBlockConfiguration)))"}
}