// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeInstanceAttributeInput: Equatable {
    /// <p>The type of attribute.</p>
    public let attributeType: InstanceAttributeType?
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?

    public init (
        attributeType: InstanceAttributeType? = nil,
        instanceId: String? = nil
    )
    {
        self.attributeType = attributeType
        self.instanceId = instanceId
    }
}

extension DescribeInstanceAttributeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeInstanceAttributeInput(attributeType: \(String(describing: attributeType)), instanceId: \(String(describing: instanceId)))"}
}