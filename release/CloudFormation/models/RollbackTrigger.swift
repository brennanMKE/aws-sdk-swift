// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A rollback trigger AWS CloudFormation monitors during creation and updating of stacks. If any of
///          the alarms you specify goes to ALARM state during the stack operation or within the
///          specified monitoring period afterwards, CloudFormation rolls back the entire stack
///          operation. </p>
public struct RollbackTrigger: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the rollback trigger.</p>
    ///          <p>If a specified trigger is missing, the entire stack operation fails and is rolled
    ///          back. </p>
    public let arn: String?
    /// <p>The resource type of the rollback trigger. Currently, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html">AWS::CloudWatch::Alarm</a> is the only supported resource type.</p>
    public let type: String?

    public init (
        arn: String? = nil,
        type: String? = nil
    )
    {
        self.arn = arn
        self.type = type
    }
}

extension RollbackTrigger: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RollbackTrigger(arn: \(String(describing: arn)), type: \(String(describing: type)))"}
}