// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration properties for logging events associated with a peer node owned by a member in a Managed Blockchain network.</p>
public struct NodeFabricLogPublishingConfiguration: Equatable {
    /// <p>Configuration properties for logging events associated with chaincode execution on a peer node. Chaincode logs contain the results of instantiating, invoking, and querying the chaincode. A peer can run multiple instances of chaincode. When enabled, a log stream is created for all chaincodes, with an individual log stream for each chaincode.</p>
    public let chaincodeLogs: LogConfigurations?
    /// <p>Configuration properties for a peer node log. Peer node logs contain messages generated when your client submits transaction proposals to peer nodes, requests to join channels, enrolls an admin peer, and lists the chaincode instances on a peer node. </p>
    public let peerLogs: LogConfigurations?

    public init (
        chaincodeLogs: LogConfigurations? = nil,
        peerLogs: LogConfigurations? = nil
    )
    {
        self.chaincodeLogs = chaincodeLogs
        self.peerLogs = peerLogs
    }
}

extension NodeFabricLogPublishingConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NodeFabricLogPublishingConfiguration(chaincodeLogs: \(String(describing: chaincodeLogs)), peerLogs: \(String(describing: peerLogs)))"}
}