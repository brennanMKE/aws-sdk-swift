// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code>
///             API action.</p>
///         <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts
///             to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
///             API action.</p>
public struct DBClusterSnapshotAttributesResult: Equatable {
    /// <p>The list of attributes and values for the manual DB cluster snapshot.</p>
    public let dBClusterSnapshotAttributes: [DBClusterSnapshotAttribute]?
    /// <p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>
    public let dBClusterSnapshotIdentifier: String?

    public init (
        dBClusterSnapshotAttributes: [DBClusterSnapshotAttribute]? = nil,
        dBClusterSnapshotIdentifier: String? = nil
    )
    {
        self.dBClusterSnapshotAttributes = dBClusterSnapshotAttributes
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
    }
}

extension DBClusterSnapshotAttributesResult: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBClusterSnapshotAttributesResult(dBClusterSnapshotAttributes: \(String(describing: dBClusterSnapshotAttributes)), dBClusterSnapshotIdentifier: \(String(describing: dBClusterSnapshotIdentifier)))"}
}