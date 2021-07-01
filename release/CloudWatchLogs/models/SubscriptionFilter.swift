// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a subscription filter.</p>
public struct SubscriptionFilter: Equatable {
    /// <p>The creation time of the subscription filter, expressed as the number of milliseconds
    ///       after Jan 1, 1970 00:00:00 UTC.</p>
    public let creationTime: Int?
    /// <p>The Amazon Resource Name (ARN) of the destination.</p>
    public let destinationArn: String?
    /// <p>The method used to distribute log data to the destination, which can be either
    ///       random or grouped by log stream.</p>
    public let distribution: Distribution?
    /// <p>The name of the subscription filter.</p>
    public let filterName: String?
    /// <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    ///       event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    ///       use the filter pattern to specify what to look for in the log event message.</p>
    public let filterPattern: String?
    /// <p>The name of the log group.</p>
    public let logGroupName: String?
    /// <p></p>
    public let roleArn: String?

    public init (
        creationTime: Int? = nil,
        destinationArn: String? = nil,
        distribution: Distribution? = nil,
        filterName: String? = nil,
        filterPattern: String? = nil,
        logGroupName: String? = nil,
        roleArn: String? = nil
    )
    {
        self.creationTime = creationTime
        self.destinationArn = destinationArn
        self.distribution = distribution
        self.filterName = filterName
        self.filterPattern = filterPattern
        self.logGroupName = logGroupName
        self.roleArn = roleArn
    }
}

extension SubscriptionFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SubscriptionFilter(creationTime: \(String(describing: creationTime)), destinationArn: \(String(describing: destinationArn)), distribution: \(String(describing: distribution)), filterName: \(String(describing: filterName)), filterPattern: \(String(describing: filterPattern)), logGroupName: \(String(describing: logGroupName)), roleArn: \(String(describing: roleArn)))"}
}