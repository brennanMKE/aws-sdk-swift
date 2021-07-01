// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CancelMLTaskRunInput: Equatable {
    /// <p>A unique identifier for the task run.</p>
    public let taskRunId: String?
    /// <p>The unique identifier of the machine learning transform.</p>
    public let transformId: String?

    public init (
        taskRunId: String? = nil,
        transformId: String? = nil
    )
    {
        self.taskRunId = taskRunId
        self.transformId = transformId
    }
}

extension CancelMLTaskRunInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CancelMLTaskRunInput(taskRunId: \(String(describing: taskRunId)), transformId: \(String(describing: transformId)))"}
}