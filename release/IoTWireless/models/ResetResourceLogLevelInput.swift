// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ResetResourceLogLevelInput: Equatable {
    /// <p>The identifier of the resource. For a Wireless Device, it is the wireless device id. For a wireless gateway, it is the wireless gateway id.</p>
    public let resourceIdentifier: String?
    /// <p>The type of the resource, currently support WirelessDevice and WirelessGateway.</p>
    public let resourceType: String?

    public init (
        resourceIdentifier: String? = nil,
        resourceType: String? = nil
    )
    {
        self.resourceIdentifier = resourceIdentifier
        self.resourceType = resourceType
    }
}

extension ResetResourceLogLevelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResetResourceLogLevelInput(resourceIdentifier: \(String(describing: resourceIdentifier)), resourceType: \(String(describing: resourceType)))"}
}