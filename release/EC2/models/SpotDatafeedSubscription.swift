// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the data feed for a Spot Instance.</p>
public struct SpotDatafeedSubscription: Equatable {
    /// <p>The name of the Amazon S3 bucket where the Spot Instance data feed is located.</p>
    public let bucket: String?
    /// <p>The fault codes for the Spot Instance request, if any.</p>
    public let fault: SpotInstanceStateFault?
    /// <p>The AWS account ID of the account.</p>
    public let ownerId: String?
    /// <p>The prefix for the data feed files.</p>
    public let prefix: String?
    /// <p>The state of the Spot Instance data feed subscription.</p>
    public let state: DatafeedSubscriptionState?

    public init (
        bucket: String? = nil,
        fault: SpotInstanceStateFault? = nil,
        ownerId: String? = nil,
        prefix: String? = nil,
        state: DatafeedSubscriptionState? = nil
    )
    {
        self.bucket = bucket
        self.fault = fault
        self.ownerId = ownerId
        self.prefix = prefix
        self.state = state
    }
}

extension SpotDatafeedSubscription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SpotDatafeedSubscription(bucket: \(String(describing: bucket)), fault: \(String(describing: fault)), ownerId: \(String(describing: ownerId)), prefix: \(String(describing: prefix)), state: \(String(describing: state)))"}
}