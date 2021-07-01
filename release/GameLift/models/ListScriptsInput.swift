// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListScriptsInput: Equatable {
    /// <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    public let limit: Int?
    /// <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    public let nextToken: String?

    public init (
        limit: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.limit = limit
        self.nextToken = nextToken
    }
}

extension ListScriptsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListScriptsInput(limit: \(String(describing: limit)), nextToken: \(String(describing: nextToken)))"}
}