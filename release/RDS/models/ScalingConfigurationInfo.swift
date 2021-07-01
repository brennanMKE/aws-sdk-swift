// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
///         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless</a> in the
///             <i>Amazon Aurora User Guide</i>.</p>
public struct ScalingConfigurationInfo: Equatable {
    /// <p>A value that indicates whether automatic pause is allowed for the Aurora DB cluster
    ///             in <code>serverless</code> DB engine mode.</p>
    ///         <p>When the value is set to false for an Aurora Serverless DB cluster, the DB cluster automatically resumes.</p>
    public let autoPause: Bool?
    /// <p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    public let maxCapacity: Int?
    /// <p>The maximum capacity for the Aurora DB cluster in <code>serverless</code> DB engine
    ///             mode.</p>
    public let minCapacity: Int?
    /// <p>The remaining amount of time, in seconds, before the Aurora DB cluster in
    ///                 <code>serverless</code> mode is paused. A DB cluster can be paused only when
    ///             it's idle (it has no connections).</p>
    public let secondsUntilAutoPause: Int?
    /// <p>The timeout action of a call to <code>ModifyCurrentDBClusterCapacity</code>, either
    ///                 <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>
    public let timeoutAction: String?

    public init (
        autoPause: Bool? = nil,
        maxCapacity: Int? = nil,
        minCapacity: Int? = nil,
        secondsUntilAutoPause: Int? = nil,
        timeoutAction: String? = nil
    )
    {
        self.autoPause = autoPause
        self.maxCapacity = maxCapacity
        self.minCapacity = minCapacity
        self.secondsUntilAutoPause = secondsUntilAutoPause
        self.timeoutAction = timeoutAction
    }
}

extension ScalingConfigurationInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ScalingConfigurationInfo(autoPause: \(String(describing: autoPause)), maxCapacity: \(String(describing: maxCapacity)), minCapacity: \(String(describing: minCapacity)), secondsUntilAutoPause: \(String(describing: secondsUntilAutoPause)), timeoutAction: \(String(describing: timeoutAction)))"}
}