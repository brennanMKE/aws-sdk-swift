// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateRuleGroupInput: Equatable {
    /// <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    public let changeToken: String?
    /// <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    ///          whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
    public let metricName: String?
    /// <p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a
    ///          <code>RuleGroup</code>.</p>
    public let name: String?
    /// <p></p>
    public let tags: [Tag]?

    public init (
        changeToken: String? = nil,
        metricName: String? = nil,
        name: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.changeToken = changeToken
        self.metricName = metricName
        self.name = name
        self.tags = tags
    }
}

extension CreateRuleGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateRuleGroupInput(changeToken: \(String(describing: changeToken)), metricName: \(String(describing: metricName)), name: \(String(describing: name)), tags: \(String(describing: tags)))"}
}