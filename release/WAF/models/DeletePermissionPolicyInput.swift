// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeletePermissionPolicyInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p>
    ///          <p>The user making the request must be the owner of the RuleGroup.</p>
    public let resourceArn: String?

    public init (
        resourceArn: String? = nil
    )
    {
        self.resourceArn = resourceArn
    }
}

extension DeletePermissionPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeletePermissionPolicyInput(resourceArn: \(String(describing: resourceArn)))"}
}