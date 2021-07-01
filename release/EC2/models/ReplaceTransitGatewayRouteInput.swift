// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ReplaceTransitGatewayRouteInput: Equatable {
    /// <p>Indicates whether traffic matching this route is to be dropped.</p>
    public let blackhole: Bool
    /// <p>The CIDR range used for the destination match. Routing decisions are based on the most specific match.</p>
    public let destinationCidrBlock: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the attachment.</p>
    public let transitGatewayAttachmentId: String?
    /// <p>The ID of the route table.</p>
    public let transitGatewayRouteTableId: String?

    public init (
        blackhole: Bool = false,
        destinationCidrBlock: String? = nil,
        dryRun: Bool = false,
        transitGatewayAttachmentId: String? = nil,
        transitGatewayRouteTableId: String? = nil
    )
    {
        self.blackhole = blackhole
        self.destinationCidrBlock = destinationCidrBlock
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }
}

extension ReplaceTransitGatewayRouteInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplaceTransitGatewayRouteInput(blackhole: \(String(describing: blackhole)), destinationCidrBlock: \(String(describing: destinationCidrBlock)), dryRun: \(String(describing: dryRun)), transitGatewayAttachmentId: \(String(describing: transitGatewayAttachmentId)), transitGatewayRouteTableId: \(String(describing: transitGatewayRouteTableId)))"}
}