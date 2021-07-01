// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListThingRegistrationTaskReportsInput: Equatable {
    /// <p>The maximum number of results to return per request.</p>
    public let maxResults: Int?
    /// <p>To retrieve the next set of results, the <code>nextToken</code>
    /// 			value from a previous response; otherwise <b>null</b> to receive
    /// 		the first set of results.</p>
    public let nextToken: String?
    /// <p>The type of task report.</p>
    public let reportType: ReportType?
    /// <p>The id of the task.</p>
    public let taskId: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        reportType: ReportType? = nil,
        taskId: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reportType = reportType
        self.taskId = taskId
    }
}

extension ListThingRegistrationTaskReportsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListThingRegistrationTaskReportsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), reportType: \(String(describing: reportType)), taskId: \(String(describing: taskId)))"}
}