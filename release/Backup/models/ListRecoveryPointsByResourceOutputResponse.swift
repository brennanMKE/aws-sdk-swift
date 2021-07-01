// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRecoveryPointsByResourceOutputResponse: Equatable {
    /// <p>The next item following a partial list of returned items. For example, if a request is
    ///          made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    ///          to return more items in your list starting at the location pointed to by the next
    ///          token.</p>
    public let nextToken: String?
    /// <p>An array of objects that contain detailed information about recovery points of the
    ///          specified resource type.</p>
    public let recoveryPoints: [RecoveryPointByResource]?

    public init (
        nextToken: String? = nil,
        recoveryPoints: [RecoveryPointByResource]? = nil
    )
    {
        self.nextToken = nextToken
        self.recoveryPoints = recoveryPoints
    }
}

extension ListRecoveryPointsByResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRecoveryPointsByResourceOutputResponse(nextToken: \(String(describing: nextToken)), recoveryPoints: \(String(describing: recoveryPoints)))"}
}