// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetMemberOutputResponse: Equatable {
    /// <p>The properties of a member.</p>
    public let member: Member?

    public init (
        member: Member? = nil
    )
    {
        self.member = member
    }
}

extension GetMemberOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetMemberOutputResponse(member: \(String(describing: member)))"}
}