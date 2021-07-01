// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for DeleteCustomerGateway.</p>
public struct DeleteCustomerGatewayInput: Equatable {
    /// <p>The ID of the customer gateway.</p>
    public let customerGatewayId: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///             and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///             Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool

    public init (
        customerGatewayId: String? = nil,
        dryRun: Bool = false
    )
    {
        self.customerGatewayId = customerGatewayId
        self.dryRun = dryRun
    }
}

extension DeleteCustomerGatewayInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteCustomerGatewayInput(customerGatewayId: \(String(describing: customerGatewayId)), dryRun: \(String(describing: dryRun)))"}
}