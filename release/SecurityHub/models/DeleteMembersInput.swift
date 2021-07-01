// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteMembersInput: Equatable {
    /// <p>The list of account IDs for the member accounts to delete.</p>
    public let accountIds: [String]?

    public init (
        accountIds: [String]? = nil
    )
    {
        self.accountIds = accountIds
    }
}

extension DeleteMembersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteMembersInput(accountIds: \(String(describing: accountIds)))"}
}