// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The type of the configuration to override the risk decision.</p>
public struct RiskExceptionConfigurationType: Equatable {
    /**
     <p>Overrides the risk decision to always block the pre-authentication requests. The IP
                 range is in CIDR notation: a compact representation of an IP address and its associated
                 routing prefix.</p>
     */
    public let blockedIPRangeList: [String]?
    /**
     <p>Risk detection is not performed on the IP addresses in the range list. The IP range is
                 in CIDR notation.</p>
     */
    public let skippedIPRangeList: [String]?

    public init (
        blockedIPRangeList: [String]? = nil,
        skippedIPRangeList: [String]? = nil
    )
    {
        self.blockedIPRangeList = blockedIPRangeList
        self.skippedIPRangeList = skippedIPRangeList
    }
}
