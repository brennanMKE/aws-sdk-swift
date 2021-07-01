// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRequestedServiceQuotaChangeHistoryInput: Equatable {
    /// <p>The maximum number of results to return with a single call. To retrieve the remaining
    ///       results, if any, make another call with the token returned from this call.</p>
    public let maxResults: Int?
    /// <p>The token for the next page of results.</p>
    public let nextToken: String?
    /// <p>The service identifier.</p>
    public let serviceCode: String?
    /// <p>The status of the quota increase request.</p>
    public let status: RequestStatus?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        serviceCode: String? = nil,
        status: RequestStatus? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceCode = serviceCode
        self.status = status
    }
}

extension ListRequestedServiceQuotaChangeHistoryInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRequestedServiceQuotaChangeHistoryInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), serviceCode: \(String(describing: serviceCode)), status: \(String(describing: status)))"}
}