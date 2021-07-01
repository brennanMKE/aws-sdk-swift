// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListOperationsInput: Equatable {
    /// <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    ///          <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    public let maxResults: Int?
    /// <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    ///       identical to the ones specified in the initial request.</p>
    ///          <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    public let nextToken: String?
    /// <p>The Amazon Resource Name (ARN) of the App Runner service that you want a list of operations for.</p>
    public let serviceArn: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        serviceArn: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceArn = serviceArn
    }
}

extension ListOperationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListOperationsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), serviceArn: \(String(describing: serviceArn)))"}
}