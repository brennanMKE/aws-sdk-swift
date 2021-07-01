// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeCommunicationsInput: Equatable {
    /// <p>The start date for a filtered date search on support case communications. Case
    ///             communications are available for 12 months after creation.</p>
    public let afterTime: String?
    /// <p>The end date for a filtered date search on support case communications. Case
    ///             communications are available for 12 months after creation.</p>
    public let beforeTime: String?
    /// <p>The support case ID requested or returned in the call. The case ID is an
    ///             alphanumeric string formatted as shown in this example:
    ///                 case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
    ///         </p>
    public let caseId: String?
    /// <p>The maximum number of results to return before paginating.</p>
    public let maxResults: Int?
    /// <p>A resumption point for pagination.</p>
    public let nextToken: String?

    public init (
        afterTime: String? = nil,
        beforeTime: String? = nil,
        caseId: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.afterTime = afterTime
        self.beforeTime = beforeTime
        self.caseId = caseId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeCommunicationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeCommunicationsInput(afterTime: \(String(describing: afterTime)), beforeTime: \(String(describing: beforeTime)), caseId: \(String(describing: caseId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}