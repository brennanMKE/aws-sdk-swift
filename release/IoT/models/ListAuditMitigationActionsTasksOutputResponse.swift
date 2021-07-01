// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAuditMitigationActionsTasksOutputResponse: Equatable {
    /// <p>The token for the next set of results.</p>
    public let nextToken: String?
    /// <p>The collection of audit mitigation tasks that matched the filter criteria.</p>
    public let tasks: [AuditMitigationActionsTaskMetadata]?

    public init (
        nextToken: String? = nil,
        tasks: [AuditMitigationActionsTaskMetadata]? = nil
    )
    {
        self.nextToken = nextToken
        self.tasks = tasks
    }
}

extension ListAuditMitigationActionsTasksOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAuditMitigationActionsTasksOutputResponse(nextToken: \(String(describing: nextToken)), tasks: \(String(describing: tasks)))"}
}