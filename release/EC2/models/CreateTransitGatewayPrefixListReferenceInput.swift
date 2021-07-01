// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateTransitGatewayPrefixListReferenceInput: Equatable {
    /// <p>Indicates whether to drop traffic that matches this route.</p>
    public let blackhole: Bool
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the prefix list that is used for destination matches.</p>
    public let prefixListId: String?
    /// <p>The ID of the attachment to which traffic is routed.</p>
    public let transitGatewayAttachmentId: String?
    /// <p>The ID of the transit gateway route table.</p>
    public let transitGatewayRouteTableId: String?

    public init (
        blackhole: Bool = false,
        dryRun: Bool = false,
        prefixListId: String? = nil,
        transitGatewayAttachmentId: String? = nil,
        transitGatewayRouteTableId: String? = nil
    )
    {
        self.blackhole = blackhole
        self.dryRun = dryRun
        self.prefixListId = prefixListId
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }
}

extension CreateTransitGatewayPrefixListReferenceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTransitGatewayPrefixListReferenceInput(blackhole: \(String(describing: blackhole)), dryRun: \(String(describing: dryRun)), prefixListId: \(String(describing: prefixListId)), transitGatewayAttachmentId: \(String(describing: transitGatewayAttachmentId)), transitGatewayRouteTableId: \(String(describing: transitGatewayRouteTableId)))"}
}