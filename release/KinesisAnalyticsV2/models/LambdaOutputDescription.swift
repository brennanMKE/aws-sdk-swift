// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For a SQL-based Kinesis Data Analytics application's output, describes the AWS
///       Lambda function that is configured as its destination. </p>
public struct LambdaOutputDescription: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the destination Lambda function.</p>
    public let resourceARN: String?
    /// <p>The ARN of the IAM role that Kinesis Data Analytics can assume to write to the destination
    ///       function.</p>
    ///          <note>
    ///             <p>Provided for backward compatibility. Applications that are created with the current API
    ///         version have an application-level service execution role rather than a resource-level
    ///         role.</p>
    ///          </note>
    public let roleARN: String?

    public init (
        resourceARN: String? = nil,
        roleARN: String? = nil
    )
    {
        self.resourceARN = resourceARN
        self.roleARN = roleARN
    }
}

extension LambdaOutputDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LambdaOutputDescription(resourceARN: \(String(describing: resourceARN)), roleARN: \(String(describing: roleARN)))"}
}