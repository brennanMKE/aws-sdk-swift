// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateMemberFromGroupInput: Equatable {
    /// <p>The identifier for the group from which members are removed.</p>
    public let groupId: String?
    /// <p>The identifier for the member to be removed to the group.</p>
    public let memberId: String?
    /// <p>The identifier for the organization under which the group exists.</p>
    public let organizationId: String?

    public init (
        groupId: String? = nil,
        memberId: String? = nil,
        organizationId: String? = nil
    )
    {
        self.groupId = groupId
        self.memberId = memberId
        self.organizationId = organizationId
    }
}

extension DisassociateMemberFromGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateMemberFromGroupInput(groupId: \(String(describing: groupId)), memberId: \(String(describing: memberId)), organizationId: \(String(describing: organizationId)))"}
}