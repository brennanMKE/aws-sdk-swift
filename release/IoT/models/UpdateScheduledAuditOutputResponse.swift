// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateScheduledAuditOutputResponse: Equatable {
    /// <p>The ARN of the scheduled audit.</p>
    public let scheduledAuditArn: String?

    public init (
        scheduledAuditArn: String? = nil
    )
    {
        self.scheduledAuditArn = scheduledAuditArn
    }
}

extension UpdateScheduledAuditOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateScheduledAuditOutputResponse(scheduledAuditArn: \(String(describing: scheduledAuditArn)))"}
}