// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteSipRuleInput: Equatable {
    /// <p>The SIP rule ID.</p>
    public let sipRuleId: String?

    public init (
        sipRuleId: String? = nil
    )
    {
        self.sipRuleId = sipRuleId
    }
}

extension DeleteSipRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteSipRuleInput(sipRuleId: \(String(describing: sipRuleId)))"}
}