// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a scheduled execution for a maintenance window.</p>
public struct ScheduledWindowExecution: Equatable {
    /// <p>The time, in ISO-8601 Extended format, that the maintenance window is scheduled to be
    ///    run.</p>
    public let executionTime: String?
    /// <p>The name of the maintenance window to be run.</p>
    public let name: String?
    /// <p>The ID of the maintenance window to be run.</p>
    public let windowId: String?

    public init (
        executionTime: String? = nil,
        name: String? = nil,
        windowId: String? = nil
    )
    {
        self.executionTime = executionTime
        self.name = name
        self.windowId = windowId
    }
}

extension ScheduledWindowExecution: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ScheduledWindowExecution(executionTime: \(String(describing: executionTime)), name: \(String(describing: name)), windowId: \(String(describing: windowId)))"}
}