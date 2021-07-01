// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an AWS IoT policy.</p>
public struct Policy: Equatable {
    /// <p>The policy ARN.</p>
    public let policyArn: String?
    /// <p>The policy name.</p>
    public let policyName: String?

    public init (
        policyArn: String? = nil,
        policyName: String? = nil
    )
    {
        self.policyArn = policyArn
        self.policyName = policyName
    }
}

extension Policy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Policy(policyArn: \(String(describing: policyArn)), policyName: \(String(describing: policyName)))"}
}