// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDBProxyTargetsInput: Equatable {
    /// <p>The identifier of the <code>DBProxyTarget</code> to describe.</p>
    public let dBProxyName: String?
    /// <p>This parameter is not currently supported.</p>
    public let filters: [Filter]?
    /// <p>
    ///         An optional pagination token provided by a previous request.
    ///         If this parameter is specified, the response includes only records beyond the marker,
    ///         up to the value specified by <code>MaxRecords</code>.
    ///       </p>
    public let marker: String?
    /// <p>
    ///         The maximum number of records to include in the response.
    ///         If more records exist than the specified <code>MaxRecords</code> value,
    ///         a pagination token called a marker is included in the response so that the remaining
    ///         results can be retrieved.
    ///         </p>
    ///          <p>Default: 100</p>
    ///          <p>Constraints: Minimum 20, maximum 100.</p>
    public let maxRecords: Int?
    /// <p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>
    public let targetGroupName: String?

    public init (
        dBProxyName: String? = nil,
        filters: [Filter]? = nil,
        marker: String? = nil,
        maxRecords: Int? = nil,
        targetGroupName: String? = nil
    )
    {
        self.dBProxyName = dBProxyName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.targetGroupName = targetGroupName
    }
}

extension DescribeDBProxyTargetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDBProxyTargetsInput(dBProxyName: \(String(describing: dBProxyName)), filters: \(String(describing: filters)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)), targetGroupName: \(String(describing: targetGroupName)))"}
}