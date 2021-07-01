// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>
public struct ActivityTaskCancelRequestedEventAttributes: Equatable {
    /// <p>The unique ID of the task.</p>
    public let activityId: String?
    /// <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    ///       <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
    public let decisionTaskCompletedEventId: Int

    public init (
        activityId: String? = nil,
        decisionTaskCompletedEventId: Int = 0
    )
    {
        self.activityId = activityId
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }
}

extension ActivityTaskCancelRequestedEventAttributes: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ActivityTaskCancelRequestedEventAttributes(activityId: \(String(describing: activityId)), decisionTaskCompletedEventId: \(String(describing: decisionTaskCompletedEventId)))"}
}