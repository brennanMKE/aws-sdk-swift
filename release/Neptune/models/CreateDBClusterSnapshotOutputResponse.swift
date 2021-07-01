// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDBClusterSnapshotOutputResponse: Equatable {
    /// <p>Contains the details for an Amazon Neptune DB cluster snapshot</p>
    ///          <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
    public let dBClusterSnapshot: DBClusterSnapshot?

    public init (
        dBClusterSnapshot: DBClusterSnapshot? = nil
    )
    {
        self.dBClusterSnapshot = dBClusterSnapshot
    }
}

extension CreateDBClusterSnapshotOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDBClusterSnapshotOutputResponse(dBClusterSnapshot: \(String(describing: dBClusterSnapshot)))"}
}