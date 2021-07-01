// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListGraphsOutputResponse: Equatable {
    /// <p>A list of behavior graphs that the account is an administrator account for.</p>
    public let graphList: [Graph]?
    /// <p>If there are more behavior graphs remaining in the results, then this is the pagination
    ///          token to use to request the next page of behavior graphs.</p>
    public let nextToken: String?

    public init (
        graphList: [Graph]? = nil,
        nextToken: String? = nil
    )
    {
        self.graphList = graphList
        self.nextToken = nextToken
    }
}

extension ListGraphsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListGraphsOutputResponse(graphList: \(String(describing: graphList)), nextToken: \(String(describing: nextToken)))"}
}