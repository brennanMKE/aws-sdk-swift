// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetOutcomesInput: Equatable {
    /// <p>The maximum number of objects to return for the request. </p>
    public let maxResults: Int?
    /// <p>The name of the outcome or outcomes to get.</p>
    public let name: String?
    /// <p>The next page token for the request. </p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        name: String? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.name = name
        self.nextToken = nextToken
    }
}

extension GetOutcomesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetOutcomesInput(maxResults: \(String(describing: maxResults)), name: \(String(describing: name)), nextToken: \(String(describing: nextToken)))"}
}