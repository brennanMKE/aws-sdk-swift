// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePolicyOutputResponse: Equatable {
    /// <p>A structure that contains details about the newly created policy.</p>
    public let policy: Policy?

    public init (
        policy: Policy? = nil
    )
    {
        self.policy = policy
    }
}

extension CreatePolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePolicyOutputResponse(policy: \(String(describing: policy)))"}
}