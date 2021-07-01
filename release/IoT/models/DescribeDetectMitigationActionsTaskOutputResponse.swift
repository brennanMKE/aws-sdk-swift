// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDetectMitigationActionsTaskOutputResponse: Equatable {
    /// <p>
    ///       The description of a task.
    ///     </p>
    public let taskSummary: DetectMitigationActionsTaskSummary?

    public init (
        taskSummary: DetectMitigationActionsTaskSummary? = nil
    )
    {
        self.taskSummary = taskSummary
    }
}

extension DescribeDetectMitigationActionsTaskOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDetectMitigationActionsTaskOutputResponse(taskSummary: \(String(describing: taskSummary)))"}
}