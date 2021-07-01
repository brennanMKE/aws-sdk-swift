// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTapePoolsOutputResponse: Equatable {
    /// <p>A string that indicates the position at which to begin the returned list of tape pools.
    ///          Use the marker in your next request to continue pagination of tape pools. If there are no
    ///          more tape pools to list, this element does not appear in the response body. </p>
    public let marker: String?
    /// <p>An array of <code>PoolInfo</code> objects, where each object describes a single custom
    ///          tape pool. If there are no custom tape pools, the <code>PoolInfos</code> is an empty array.
    ///       </p>
    public let poolInfos: [PoolInfo]?

    public init (
        marker: String? = nil,
        poolInfos: [PoolInfo]? = nil
    )
    {
        self.marker = marker
        self.poolInfos = poolInfos
    }
}

extension ListTapePoolsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTapePoolsOutputResponse(marker: \(String(describing: marker)), poolInfos: \(String(describing: poolInfos)))"}
}