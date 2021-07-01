// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Container for the parameters to the <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation.</p>
public struct AcceptInboundCrossClusterSearchConnectionInput: Equatable {
    /// <p>The id of the inbound connection that you want to accept.</p>
    public let crossClusterSearchConnectionId: String?

    public init (
        crossClusterSearchConnectionId: String? = nil
    )
    {
        self.crossClusterSearchConnectionId = crossClusterSearchConnectionId
    }
}

extension AcceptInboundCrossClusterSearchConnectionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AcceptInboundCrossClusterSearchConnectionInput(crossClusterSearchConnectionId: \(String(describing: crossClusterSearchConnectionId)))"}
}