// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeVpcAttributeInput: Equatable {
    /// <p>The VPC attribute.</p>
    public let attribute: VpcAttributeName?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the VPC.</p>
    public let vpcId: String?

    public init (
        attribute: VpcAttributeName? = nil,
        dryRun: Bool = false,
        vpcId: String? = nil
    )
    {
        self.attribute = attribute
        self.dryRun = dryRun
        self.vpcId = vpcId
    }
}

extension DescribeVpcAttributeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeVpcAttributeInput(attribute: \(String(describing: attribute)), dryRun: \(String(describing: dryRun)), vpcId: \(String(describing: vpcId)))"}
}