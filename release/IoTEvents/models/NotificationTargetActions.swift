// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies an AWS Lambda function to manage alarm notifications.
/// You can create one or use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">AWS Lambda function provided by AWS IoT Events</a>.</p>
public struct NotificationTargetActions: Equatable {
    /// <p>Calls a Lambda function, passing in information about the detector model instance and the
    ///       event that triggered the action.</p>
    public let lambdaAction: LambdaAction?

    public init (
        lambdaAction: LambdaAction? = nil
    )
    {
        self.lambdaAction = lambdaAction
    }
}

extension NotificationTargetActions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotificationTargetActions(lambdaAction: \(String(describing: lambdaAction)))"}
}