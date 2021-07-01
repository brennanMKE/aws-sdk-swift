// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <note>
///             <p>This is <b>AWS WAF Classic</b> documentation. For
///       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
///       WAF Classic</a> in the developer guide.</p>
///             <p>
///                <b>For the latest version of AWS
///       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
///          </note>
///          <p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>
public struct RuleGroupSummary: Equatable {
    /// <p>A friendly name or description of the <a>RuleGroup</a>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
    public let name: String?
    /// <p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>),
    ///          update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete
    ///          one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>
    ///          <p>
    ///             <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
    public let ruleGroupId: String?

    public init (
        name: String? = nil,
        ruleGroupId: String? = nil
    )
    {
        self.name = name
        self.ruleGroupId = ruleGroupId
    }
}

extension RuleGroupSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RuleGroupSummary(name: \(String(describing: name)), ruleGroupId: \(String(describing: ruleGroupId)))"}
}