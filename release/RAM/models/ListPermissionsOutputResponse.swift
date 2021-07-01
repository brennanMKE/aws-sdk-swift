// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListPermissionsOutputResponse: Equatable {
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?
    /// <p>Information about the permissions.</p>
    public let permissions: [ResourceSharePermissionSummary]?

    public init (
        nextToken: String? = nil,
        permissions: [ResourceSharePermissionSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.permissions = permissions
    }
}

extension ListPermissionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPermissionsOutputResponse(nextToken: \(String(describing: nextToken)), permissions: \(String(describing: permissions)))"}
}