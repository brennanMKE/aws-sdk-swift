// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterTransitGatewayOutputResponse: Equatable {
    /// <p>Information about the transit gateway registration.</p>
    public let transitGatewayRegistration: TransitGatewayRegistration?

    public init (
        transitGatewayRegistration: TransitGatewayRegistration? = nil
    )
    {
        self.transitGatewayRegistration = transitGatewayRegistration
    }
}

extension RegisterTransitGatewayOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterTransitGatewayOutputResponse(transitGatewayRegistration: \(String(describing: transitGatewayRegistration)))"}
}