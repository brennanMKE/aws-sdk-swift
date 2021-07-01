// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListOutpostsInput: Equatable {
    /// <p>The maximum page size.</p>
    public let maxResults: Int?
    /// <p>The pagination token.</p>
    public let nextToken: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListOutpostsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListOutpostsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}