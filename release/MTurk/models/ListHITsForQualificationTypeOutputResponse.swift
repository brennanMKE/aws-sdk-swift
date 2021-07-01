// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListHITsForQualificationTypeOutputResponse: Equatable {
    /// <p> The list of HIT elements returned by the query.</p>
    public let hITs: [HIT]?
    /// <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    ///             returns a pagination token in the response. You can use this pagination token
    ///             to retrieve the next set of results.
    ///         </p>
    public let nextToken: String?
    /// <p> The number of HITs on this page in the filtered results
    ///             list, equivalent to the number of HITs being returned by this call.	</p>
    public let numResults: Int?

    public init (
        hITs: [HIT]? = nil,
        nextToken: String? = nil,
        numResults: Int? = nil
    )
    {
        self.hITs = hITs
        self.nextToken = nextToken
        self.numResults = numResults
    }
}

extension ListHITsForQualificationTypeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListHITsForQualificationTypeOutputResponse(hITs: \(String(describing: hITs)), nextToken: \(String(describing: nextToken)), numResults: \(String(describing: numResults)))"}
}