// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetJourneyExecutionActivityMetricsInput: Equatable {
    /// <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    public let applicationId: String?
    /// <p>The unique identifier for the journey activity.</p>
    public let journeyActivityId: String?
    /// <p>The unique identifier for the journey.</p>
    public let journeyId: String?
    /// <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    public let nextToken: String?
    /// <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    public let pageSize: String?

    public init (
        applicationId: String? = nil,
        journeyActivityId: String? = nil,
        journeyId: String? = nil,
        nextToken: String? = nil,
        pageSize: String? = nil
    )
    {
        self.applicationId = applicationId
        self.journeyActivityId = journeyActivityId
        self.journeyId = journeyId
        self.nextToken = nextToken
        self.pageSize = pageSize
    }
}

extension GetJourneyExecutionActivityMetricsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetJourneyExecutionActivityMetricsInput(applicationId: \(String(describing: applicationId)), journeyActivityId: \(String(describing: journeyActivityId)), journeyId: \(String(describing: journeyId)), nextToken: \(String(describing: nextToken)), pageSize: \(String(describing: pageSize)))"}
}