// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
public struct ClusterListEntry: Equatable {
    /// <p>The 39-character ID for the cluster that you want to list, for example
    ///         <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    public let clusterId: String?
    /// <p>The current state of this cluster. For information about the state of a specific node,
    ///       see <a>JobListEntry$JobState</a>.</p>
    public let clusterState: ClusterState?
    /// <p>The creation date for this cluster.</p>
    public let creationDate: Date?
    /// <p>Defines an optional description of the cluster, for example <code>Environmental Data
    ///         Cluster-01</code>.</p>
    public let description: String?

    public init (
        clusterId: String? = nil,
        clusterState: ClusterState? = nil,
        creationDate: Date? = nil,
        description: String? = nil
    )
    {
        self.clusterId = clusterId
        self.clusterState = clusterState
        self.creationDate = creationDate
        self.description = description
    }
}

extension ClusterListEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ClusterListEntry(clusterId: \(String(describing: clusterId)), clusterState: \(String(describing: clusterState)), creationDate: \(String(describing: creationDate)), description: \(String(describing: description)))"}
}