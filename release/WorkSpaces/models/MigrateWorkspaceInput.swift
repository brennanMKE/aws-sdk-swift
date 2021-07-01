// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct MigrateWorkspaceInput: Equatable {
    /// <p>The identifier of the target bundle type to migrate the WorkSpace to.</p>
    public let bundleId: String?
    /// <p>The identifier of the WorkSpace to migrate from.</p>
    public let sourceWorkspaceId: String?

    public init (
        bundleId: String? = nil,
        sourceWorkspaceId: String? = nil
    )
    {
        self.bundleId = bundleId
        self.sourceWorkspaceId = sourceWorkspaceId
    }
}

extension MigrateWorkspaceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MigrateWorkspaceInput(bundleId: \(String(describing: bundleId)), sourceWorkspaceId: \(String(describing: sourceWorkspaceId)))"}
}