// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Filters a conformance pack by AWS Config rule names, compliance types, AWS resource types, and resource IDs.</p>
public struct ConformancePackEvaluationFilters: Equatable {
    /// <p>Filters the results by compliance.</p>
    /// 		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>
    public let complianceType: ConformancePackComplianceType?
    /// <p>Filters the results by AWS Config rule names.</p>
    public let configRuleNames: [String]?
    /// <p>Filters the results by resource IDs.</p>
    /// 		       <note>
    ///             <p>This is valid only when you provide resource type. If there is no resource type, you will see an error.</p>
    ///          </note>
    public let resourceIds: [String]?
    /// <p>Filters the results by the resource type (for example, <code>"AWS::EC2::Instance"</code>). </p>
    public let resourceType: String?

    public init (
        complianceType: ConformancePackComplianceType? = nil,
        configRuleNames: [String]? = nil,
        resourceIds: [String]? = nil,
        resourceType: String? = nil
    )
    {
        self.complianceType = complianceType
        self.configRuleNames = configRuleNames
        self.resourceIds = resourceIds
        self.resourceType = resourceType
    }
}

extension ConformancePackEvaluationFilters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConformancePackEvaluationFilters(complianceType: \(String(describing: complianceType)), configRuleNames: \(String(describing: configRuleNames)), resourceIds: \(String(describing: resourceIds)), resourceType: \(String(describing: resourceType)))"}
}