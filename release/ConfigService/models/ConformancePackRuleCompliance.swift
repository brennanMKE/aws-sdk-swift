// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Compliance information of one or more AWS Config rules within a conformance pack. You can filter using AWS Config rule names and compliance types.</p>
public struct ConformancePackRuleCompliance: Equatable {
    /// <p>Compliance of the AWS Config rule.</p>
    /// 		       <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>
    public let complianceType: ConformancePackComplianceType?
    /// <p>Name of the config rule.</p>
    public let configRuleName: String?
    /// <p>Controls for the conformance pack. A control is a process to prevent or detect problems while meeting objectives.
    /// 			A control can align with a specific compliance regime or map to internal controls defined by an organization.</p>
    public let controls: [String]?

    public init (
        complianceType: ConformancePackComplianceType? = nil,
        configRuleName: String? = nil,
        controls: [String]? = nil
    )
    {
        self.complianceType = complianceType
        self.configRuleName = configRuleName
        self.controls = controls
    }
}

extension ConformancePackRuleCompliance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConformancePackRuleCompliance(complianceType: \(String(describing: complianceType)), configRuleName: \(String(describing: configRuleName)), controls: \(String(describing: controls)))"}
}