// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DisableSnapshotCopyInput: Equatable {
    /// <p>The unique identifier of the source cluster that you want to disable copying of
    ///             snapshots to a destination region.</p>
    ///         <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    ///             snapshot copy enabled.</p>
    public let clusterIdentifier: String?

    public init (
        clusterIdentifier: String? = nil
    )
    {
        self.clusterIdentifier = clusterIdentifier
    }
}

extension DisableSnapshotCopyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableSnapshotCopyInput(clusterIdentifier: \(String(describing: clusterIdentifier)))"}
}