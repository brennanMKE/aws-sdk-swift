// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a <code>RevisionTarget</code>.</p>
public struct RevisionTarget: Equatable {
    /// <p>A unique string that identifies the version to update the cluster to. You can use this
    ///             value in <a>ModifyClusterDbRevision</a>.</p>
    public let databaseRevision: String?
    /// <p>The date on which the database revision was released.</p>
    public let databaseRevisionReleaseDate: Date?
    /// <p>A string that describes the changes and features that will be applied to the cluster
    ///             when it is updated to the corresponding <a>ClusterDbRevision</a>.</p>
    public let description: String?

    public init (
        databaseRevision: String? = nil,
        databaseRevisionReleaseDate: Date? = nil,
        description: String? = nil
    )
    {
        self.databaseRevision = databaseRevision
        self.databaseRevisionReleaseDate = databaseRevisionReleaseDate
        self.description = description
    }
}

extension RevisionTarget: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RevisionTarget(databaseRevision: \(String(describing: databaseRevision)), databaseRevisionReleaseDate: \(String(describing: databaseRevisionReleaseDate)), description: \(String(describing: description)))"}
}