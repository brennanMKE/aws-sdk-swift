// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateRoomMembershipInput: Equatable {
    /// <p>The Amazon Chime account ID.</p>
    public let accountId: String?
    /// <p>The Amazon Chime member ID (user ID or bot ID).</p>
    public let memberId: String?
    /// <p>The role of the member.</p>
    public let role: RoomMembershipRole?
    /// <p>The room ID.</p>
    public let roomId: String?

    public init (
        accountId: String? = nil,
        memberId: String? = nil,
        role: RoomMembershipRole? = nil,
        roomId: String? = nil
    )
    {
        self.accountId = accountId
        self.memberId = memberId
        self.role = role
        self.roomId = roomId
    }
}

extension CreateRoomMembershipInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateRoomMembershipInput(accountId: \(String(describing: accountId)), memberId: \(String(describing: memberId)), role: \(String(describing: role)), roomId: \(String(describing: roomId)))"}
}