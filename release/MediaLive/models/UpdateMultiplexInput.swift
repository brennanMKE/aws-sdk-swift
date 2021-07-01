// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// A request to update a multiplex.
public struct UpdateMultiplexInput: Equatable {
    /// ID of the multiplex to update.
    public let multiplexId: String?
    /// The new settings for a multiplex.
    public let multiplexSettings: MultiplexSettings?
    /// Name of the multiplex.
    public let name: String?

    public init (
        multiplexId: String? = nil,
        multiplexSettings: MultiplexSettings? = nil,
        name: String? = nil
    )
    {
        self.multiplexId = multiplexId
        self.multiplexSettings = multiplexSettings
        self.name = name
    }
}

extension UpdateMultiplexInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateMultiplexInput(multiplexId: \(String(describing: multiplexId)), multiplexSettings: \(String(describing: multiplexSettings)), name: \(String(describing: name)))"}
}