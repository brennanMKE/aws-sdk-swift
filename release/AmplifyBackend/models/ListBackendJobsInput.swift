// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request body for ListBackendJobs.</p>
public struct ListBackendJobsInput: Equatable {
    /// <p>The app ID.</p>
    public let appId: String?
    /// <p>The name of the backend environment.</p>
    public let backendEnvironmentName: String?
    /// <p>The ID for the job.</p>
    public let jobId: String?
    /// <p>The maximum number of results that you want in the response.</p>
    public let maxResults: Int
    /// <p>The token for the next set of results.</p>
    public let nextToken: String?
    /// <p>Filters the list of response objects to include only those with the specified operation name.</p>
    public let operation: String?
    /// <p>Filters the list of response objects to include only those with the specified status.</p>
    public let status: String?

    public init (
        appId: String? = nil,
        backendEnvironmentName: String? = nil,
        jobId: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil,
        operation: String? = nil,
        status: String? = nil
    )
    {
        self.appId = appId
        self.backendEnvironmentName = backendEnvironmentName
        self.jobId = jobId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.operation = operation
        self.status = status
    }
}

extension ListBackendJobsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBackendJobsInput(appId: \(String(describing: appId)), backendEnvironmentName: \(String(describing: backendEnvironmentName)), jobId: \(String(describing: jobId)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), operation: \(String(describing: operation)), status: \(String(describing: status)))"}
}