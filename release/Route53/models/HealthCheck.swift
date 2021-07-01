// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
public struct HealthCheck: Equatable {
    /// <p>A unique string that you specified when you created the health check.</p>
    public let callerReference: String?
    /// <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
    public let cloudWatchAlarmConfiguration: CloudWatchAlarmConfiguration?
    /// <p>A complex type that contains detailed information about one health check.</p>
    public let healthCheckConfig: HealthCheckConfig?
    /// <p>The version of the health check. You can optionally pass this value in a call to <code>UpdateHealthCheck</code> to prevent overwriting
    /// 			another change to the health check.</p>
    public let healthCheckVersion: Int?
    /// <p>The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use
    /// 			this value to specify which health check to use. The value can be up to 64 characters long. </p>
    public let id: String?
    /// <p>If the health check was created by another service, the service that created the health check. When a health check is created
    /// 			by another service, you can't edit or delete it using Amazon Route 53. </p>
    public let linkedService: LinkedService?

    public init (
        callerReference: String? = nil,
        cloudWatchAlarmConfiguration: CloudWatchAlarmConfiguration? = nil,
        healthCheckConfig: HealthCheckConfig? = nil,
        healthCheckVersion: Int? = nil,
        id: String? = nil,
        linkedService: LinkedService? = nil
    )
    {
        self.callerReference = callerReference
        self.cloudWatchAlarmConfiguration = cloudWatchAlarmConfiguration
        self.healthCheckConfig = healthCheckConfig
        self.healthCheckVersion = healthCheckVersion
        self.id = id
        self.linkedService = linkedService
    }
}

extension HealthCheck: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HealthCheck(callerReference: \(String(describing: callerReference)), cloudWatchAlarmConfiguration: \(String(describing: cloudWatchAlarmConfiguration)), healthCheckConfig: \(String(describing: healthCheckConfig)), healthCheckVersion: \(String(describing: healthCheckVersion)), id: \(String(describing: id)), linkedService: \(String(describing: linkedService)))"}
}