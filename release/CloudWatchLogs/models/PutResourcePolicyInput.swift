// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutResourcePolicyInput: Equatable {
    /// <p>Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.
    ///     This parameter is required.</p>
    ///          <p>The following example creates a resource policy enabling the Route 53 service to put
    ///       DNS query logs in to the specified log group. Replace <code>"logArn"</code> with the ARN of your CloudWatch Logs resource, such as a log group or log stream.</p>
    ///          <p>
    ///             <code>{
    ///    "Version": "2012-10-17",
    ///    "Statement": [
    ///      {
    ///        "Sid": "Route53LogsToCloudWatchLogs",
    ///        "Effect": "Allow",
    ///        "Principal": {
    ///         "Service": [
    ///                 "route53.amazonaws.com"
    ///                ]
    ///             },
    ///          "Action":"logs:PutLogEvents",
    ///          "Resource": "logArn"
    ///       }
    ///     ]
    /// } </code>
    ///
    ///          </p>
    public let policyDocument: String?
    /// <p>Name of the new policy. This parameter is required.</p>
    public let policyName: String?

    public init (
        policyDocument: String? = nil,
        policyName: String? = nil
    )
    {
        self.policyDocument = policyDocument
        self.policyName = policyName
    }
}

extension PutResourcePolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutResourcePolicyInput(policyDocument: \(String(describing: policyDocument)), policyName: \(String(describing: policyName)))"}
}