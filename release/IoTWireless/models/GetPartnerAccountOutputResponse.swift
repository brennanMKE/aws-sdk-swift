// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetPartnerAccountOutputResponse: Equatable {
    /// <p>Whether the partner account is linked to the AWS account.</p>
    public let accountLinked: Bool
    /// <p>The Sidewalk account credentials.</p>
    public let sidewalk: SidewalkAccountInfoWithFingerprint?

    public init (
        accountLinked: Bool = false,
        sidewalk: SidewalkAccountInfoWithFingerprint? = nil
    )
    {
        self.accountLinked = accountLinked
        self.sidewalk = sidewalk
    }
}

extension GetPartnerAccountOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPartnerAccountOutputResponse(accountLinked: \(String(describing: accountLinked)), sidewalk: \(String(describing: sidewalk)))"}
}