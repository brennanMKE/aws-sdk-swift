// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents an available endpoint against which to make API calls agaisnt, as well as the TTL for that endpoint.</p>
public struct Endpoint: Equatable {
    /// <p>An endpoint address.</p>
    public let address: String?
    /// <p>The TTL for the endpoint, in minutes.</p>
    public let cachePeriodInMinutes: Int

    public init (
        address: String? = nil,
        cachePeriodInMinutes: Int = 0
    )
    {
        self.address = address
        self.cachePeriodInMinutes = cachePeriodInMinutes
    }
}

extension Endpoint: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Endpoint(address: \(String(describing: address)), cachePeriodInMinutes: \(String(describing: cachePeriodInMinutes)))"}
}