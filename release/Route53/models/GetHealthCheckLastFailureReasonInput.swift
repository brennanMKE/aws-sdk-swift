// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request for the reason that a health check failed most recently.</p>
public struct GetHealthCheckLastFailureReasonInput: Equatable {
    /// <p>The ID for the health check for which you want the last failure reason. When you created the health check,
    /// 			<code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p>
    /// 		       <note>
    ///             <p>If you want to get the last failure reason for a calculated health check, you must use the Amazon Route 53 console or the
    /// 			CloudWatch console. You can't use <code>GetHealthCheckLastFailureReason</code> for a calculated health check.</p>
    ///          </note>
    public let healthCheckId: String?

    public init (
        healthCheckId: String? = nil
    )
    {
        self.healthCheckId = healthCheckId
    }
}

extension GetHealthCheckLastFailureReasonInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetHealthCheckLastFailureReasonInput(healthCheckId: \(String(describing: healthCheckId)))"}
}