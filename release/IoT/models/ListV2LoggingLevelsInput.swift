// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListV2LoggingLevelsInput: Equatable {
    /// <p>The maximum number of results to return at one time.</p>
    public let maxResults: Int?
    /// <p>To retrieve the next set of results, the <code>nextToken</code>
    ///          value from a previous response; otherwise <b>null</b> to receive
    ///          the first set of results.</p>
    public let nextToken: String?
    /// <p>The type of resource for which you are configuring logging. Must be
    ///             <code>THING_Group</code>.</p>
    public let targetType: LogTargetType?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        targetType: LogTargetType? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.targetType = targetType
    }
}

extension ListV2LoggingLevelsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListV2LoggingLevelsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), targetType: \(String(describing: targetType)))"}
}