// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Origination routes define call distribution properties for your SIP hosts to receive inbound
///             calls using your Amazon Chime Voice Connector. Limit: Ten origination routes for each
///             Amazon Chime Voice Connector.</p>
public struct OriginationRoute: Equatable {
    /// <p>The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.</p>
    public let `protocol`: OriginationRouteProtocol?
    /// <p>The FQDN or IP address to contact for origination traffic.</p>
    public let host: String?
    /// <p>The designated origination route port. Defaults to 5060.</p>
    public let port: Int?
    /// <p>The priority associated with the host, with 1 being the highest priority. Higher priority
    ///             hosts are attempted first.</p>
    public let priority: Int?
    /// <p>The weight associated with the host. If hosts are equal in priority, calls are redistributed among
    ///             them based on their relative weight.</p>
    public let weight: Int?

    public init (
        `protocol`: OriginationRouteProtocol? = nil,
        host: String? = nil,
        port: Int? = nil,
        priority: Int? = nil,
        weight: Int? = nil
    )
    {
        self.`protocol` = `protocol`
        self.host = host
        self.port = port
        self.priority = priority
        self.weight = weight
    }
}

extension OriginationRoute: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OriginationRoute(host: \(String(describing: host)), port: \(String(describing: port)), priority: \(String(describing: priority)), protocol: \(String(describing: `protocol`)), weight: \(String(describing: weight)))"}
}