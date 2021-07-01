// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeCustomRoutingAcceleratorAttributesOutputResponse: Equatable {
    /// <p>The attributes of the custom routing accelerator.</p>
    public let acceleratorAttributes: CustomRoutingAcceleratorAttributes?

    public init (
        acceleratorAttributes: CustomRoutingAcceleratorAttributes? = nil
    )
    {
        self.acceleratorAttributes = acceleratorAttributes
    }
}

extension DescribeCustomRoutingAcceleratorAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeCustomRoutingAcceleratorAttributesOutputResponse(acceleratorAttributes: \(String(describing: acceleratorAttributes)))"}
}