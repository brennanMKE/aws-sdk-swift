// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input to <a>DescribeDBClusterSnapshots</a>.</p>
public struct DescribeDBClusterSnapshotsInput: Equatable {
    /// <p>The ID of the cluster to retrieve the list of cluster snapshots for. This parameter can't be used with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case sensitive. </p>
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>If provided, must match the identifier of an existing
    ///                     <code>DBCluster</code>.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterIdentifier: String?
    /// <p>A specific cluster snapshot identifier to describe. This parameter can't be used with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p>
    ///         <p>Constraints:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>If provided, must match the identifier of an existing
    ///                         <code>DBClusterSnapshot</code>.</p>
    ///             </li>
    ///             <li>
    ///                 <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    ///                     parameter must also be specified.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterSnapshotIdentifier: String?
    /// <p>This parameter is not currently supported.</p>
    public let filters: [Filter]?
    /// <p>Set to <code>true</code> to include manual cluster snapshots that are public and can be copied or restored by any AWS account, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    public let includePublic: Bool
    /// <p>Set to <code>true</code> to include shared manual cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    public let includeShared: Bool
    /// <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    ///          includes only records beyond the marker, up to the value specified by
    ///          <code>MaxRecords</code>.</p>
    public let marker: String?
    /// <p> The maximum number of records to include in the response. If more records exist than
    ///          the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    ///          in the response so that the remaining results can be retrieved.</p>
    ///          <p>Default: 100</p>
    ///         <p>Constraints: Minimum 20, maximum 100.</p>
    public let maxRecords: Int?
    /// <p>The type of cluster snapshots to be returned. You can specify one of the following values:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your AWS account.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>manual</code> - Return all cluster snapshots that you have manually created for your AWS account.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>shared</code> - Return all manual cluster snapshots that have been shared to your AWS account.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>public</code> - Return all cluster snapshots that have been marked as public.</p>
    ///             </li>
    ///          </ul>
    ///         <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual cluster snapshots are returned. You can include shared cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public cluster snapshots with these results by setting the<code>IncludePublic</code> parameter to <code>true</code>.</p>
    ///         <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
    public let snapshotType: String?

    public init (
        dBClusterIdentifier: String? = nil,
        dBClusterSnapshotIdentifier: String? = nil,
        filters: [Filter]? = nil,
        includePublic: Bool = false,
        includeShared: Bool = false,
        marker: String? = nil,
        maxRecords: Int? = nil,
        snapshotType: String? = nil
    )
    {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
        self.filters = filters
        self.includePublic = includePublic
        self.includeShared = includeShared
        self.marker = marker
        self.maxRecords = maxRecords
        self.snapshotType = snapshotType
    }
}

extension DescribeDBClusterSnapshotsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDBClusterSnapshotsInput(dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBClusterSnapshotIdentifier: \(String(describing: dBClusterSnapshotIdentifier)), filters: \(String(describing: filters)), includePublic: \(String(describing: includePublic)), includeShared: \(String(describing: includeShared)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)), snapshotType: \(String(describing: snapshotType)))"}
}