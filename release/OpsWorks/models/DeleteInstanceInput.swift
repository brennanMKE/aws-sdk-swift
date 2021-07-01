// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteInstanceInput: Equatable {
    /// <p>Whether to delete the instance Elastic IP address.</p>
    public let deleteElasticIp: Bool?
    /// <p>Whether to delete the instance's Amazon EBS volumes.</p>
    public let deleteVolumes: Bool?
    /// <p>The instance ID.</p>
    public let instanceId: String?

    public init (
        deleteElasticIp: Bool? = nil,
        deleteVolumes: Bool? = nil,
        instanceId: String? = nil
    )
    {
        self.deleteElasticIp = deleteElasticIp
        self.deleteVolumes = deleteVolumes
        self.instanceId = instanceId
    }
}

extension DeleteInstanceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteInstanceInput(deleteElasticIp: \(String(describing: deleteElasticIp)), deleteVolumes: \(String(describing: deleteVolumes)), instanceId: \(String(describing: instanceId)))"}
}