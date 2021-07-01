// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListJobRunsInput: Equatable {
    /// <p>The maximum number of results to return in this request. </p>
    public let maxResults: Int?
    /// <p>The name of the job.</p>
    public let name: String?
    /// <p>The token returned by a previous call to retrieve the next set of results.</p>
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

extension ListJobRunsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListJobRunsInput(maxResults: \(String(describing: maxResults)), name: \(String(describing: name)), nextToken: \(String(describing: nextToken)))"}
}