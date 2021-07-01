// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Recommendations to rightsize resources.</p>
public struct RightsizingRecommendation: Equatable {
    /// <p>The account that this recommendation is for.</p>
    public let accountId: String?
    /// <p> Context regarding the current instance.</p>
    public let currentInstance: CurrentInstance?
    /// <p>
    ///             The list of possible reasons why the recommendation is generated such as under or over utilization of specific metrics (for example, CPU, Memory, Network).
    ///         </p>
    public let findingReasonCodes: [FindingReasonCode]?
    /// <p> Details for modification recommendations.  </p>
    public let modifyRecommendationDetail: ModifyRecommendationDetail?
    /// <p>Recommendation to either terminate or modify the resource.</p>
    public let rightsizingType: RightsizingType?
    /// <p>Details for termination recommendations.</p>
    public let terminateRecommendationDetail: TerminateRecommendationDetail?

    public init (
        accountId: String? = nil,
        currentInstance: CurrentInstance? = nil,
        findingReasonCodes: [FindingReasonCode]? = nil,
        modifyRecommendationDetail: ModifyRecommendationDetail? = nil,
        rightsizingType: RightsizingType? = nil,
        terminateRecommendationDetail: TerminateRecommendationDetail? = nil
    )
    {
        self.accountId = accountId
        self.currentInstance = currentInstance
        self.findingReasonCodes = findingReasonCodes
        self.modifyRecommendationDetail = modifyRecommendationDetail
        self.rightsizingType = rightsizingType
        self.terminateRecommendationDetail = terminateRecommendationDetail
    }
}

extension RightsizingRecommendation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RightsizingRecommendation(accountId: \(String(describing: accountId)), currentInstance: \(String(describing: currentInstance)), findingReasonCodes: \(String(describing: findingReasonCodes)), modifyRecommendationDetail: \(String(describing: modifyRecommendationDetail)), rightsizingType: \(String(describing: rightsizingType)), terminateRecommendationDetail: \(String(describing: terminateRecommendationDetail)))"}
}