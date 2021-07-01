// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the priorities for the rules for a listener.</p>
public struct RulePriorityPair: Equatable {
    /// <p>The rule priority.</p>
    public let priority: Int?
    /// <p>The Amazon Resource Name (ARN) of the rule.</p>
    public let ruleArn: String?

    public init (
        priority: Int? = nil,
        ruleArn: String? = nil
    )
    {
        self.priority = priority
        self.ruleArn = ruleArn
    }
}

extension RulePriorityPair: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RulePriorityPair(priority: \(String(describing: priority)), ruleArn: \(String(describing: ruleArn)))"}
}