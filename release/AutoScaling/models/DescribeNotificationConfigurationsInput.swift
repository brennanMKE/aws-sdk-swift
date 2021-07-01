// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeNotificationConfigurationsInput: Equatable {
    /// <p>The name of the Auto Scaling group.</p>
    public let autoScalingGroupNames: [String]?
    /// <p>The maximum number of items to return with this call. The default value is
    ///                 <code>50</code> and the maximum value is <code>100</code>.</p>
    public let maxRecords: Int?
    /// <p>The token for the next set of items to return. (You received this token from a
    ///             previous call.)</p>
    public let nextToken: String?

    public init (
        autoScalingGroupNames: [String]? = nil,
        maxRecords: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.autoScalingGroupNames = autoScalingGroupNames
        self.maxRecords = maxRecords
        self.nextToken = nextToken
    }
}

extension DescribeNotificationConfigurationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeNotificationConfigurationsInput(autoScalingGroupNames: \(String(describing: autoScalingGroupNames)), maxRecords: \(String(describing: maxRecords)), nextToken: \(String(describing: nextToken)))"}
}