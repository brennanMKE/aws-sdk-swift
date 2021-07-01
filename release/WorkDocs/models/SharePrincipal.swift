// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the recipient type and ID, if available.</p>
public struct SharePrincipal: Equatable {
    /// <p>The ID of the recipient.</p>
    public let id: String?
    /// <p>The role of the recipient.</p>
    public let role: RoleType?
    /// <p>The type of the recipient.</p>
    public let type: PrincipalType?

    public init (
        id: String? = nil,
        role: RoleType? = nil,
        type: PrincipalType? = nil
    )
    {
        self.id = id
        self.role = role
        self.type = type
    }
}

extension SharePrincipal: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SharePrincipal(id: \(String(describing: id)), role: \(String(describing: role)), type: \(String(describing: type)))"}
}