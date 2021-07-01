// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAccessPointsOutputResponse: Equatable {
    /// <p>Contains identification and configuration information for one or more access points
    ///          associated with the specified bucket.</p>
    public let accessPointList: [AccessPoint]?
    /// <p>If the specified bucket has more access points than can be returned in one call to this
    ///          API, this field contains a continuation token that you can provide in subsequent calls to
    ///          this API to retrieve additional access points.</p>
    public let nextToken: String?

    public init (
        accessPointList: [AccessPoint]? = nil,
        nextToken: String? = nil
    )
    {
        self.accessPointList = accessPointList
        self.nextToken = nextToken
    }
}

extension ListAccessPointsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAccessPointsOutputResponse(accessPointList: \(String(describing: accessPointList)), nextToken: \(String(describing: nextToken)))"}
}