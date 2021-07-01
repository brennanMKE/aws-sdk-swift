// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRoleAliasesOutputResponse: Equatable {
    /// <p>A marker used to get the next set of results.</p>
    public let nextMarker: String?
    /// <p>The role aliases.</p>
    public let roleAliases: [String]?

    public init (
        nextMarker: String? = nil,
        roleAliases: [String]? = nil
    )
    {
        self.nextMarker = nextMarker
        self.roleAliases = roleAliases
    }
}

extension ListRoleAliasesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRoleAliasesOutputResponse(nextMarker: \(String(describing: nextMarker)), roleAliases: \(String(describing: roleAliases)))"}
}