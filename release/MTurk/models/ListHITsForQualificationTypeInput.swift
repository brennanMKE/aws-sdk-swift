// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListHITsForQualificationTypeInput: Equatable {
    /// <p>
    ///             Limit the number of results returned.
    ///         </p>
    public let maxResults: Int?
    /// <p>Pagination Token</p>
    public let nextToken: String?
    /// <p>
    ///             The ID of the Qualification type to use when querying HITs.
    ///         </p>
    public let qualificationTypeId: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        qualificationTypeId: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.qualificationTypeId = qualificationTypeId
    }
}

extension ListHITsForQualificationTypeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListHITsForQualificationTypeInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), qualificationTypeId: \(String(describing: qualificationTypeId)))"}
}