// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request to update a distribution.</p>
public struct UpdateDistributionInput: Equatable {
    /// <p>The distribution's configuration information.</p>
    public let distributionConfig: DistributionConfig?
    /// <p>The distribution's id.</p>
    public let id: String?
    /// <p>The value of the <code>ETag</code> header that you received when retrieving the
    /// 			distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    public let ifMatch: String?

    public init (
        distributionConfig: DistributionConfig? = nil,
        id: String? = nil,
        ifMatch: String? = nil
    )
    {
        self.distributionConfig = distributionConfig
        self.id = id
        self.ifMatch = ifMatch
    }
}

extension UpdateDistributionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDistributionInput(distributionConfig: \(String(describing: distributionConfig)), id: \(String(describing: id)), ifMatch: \(String(describing: ifMatch)))"}
}