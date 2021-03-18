// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The new device metadata type.</p>
public struct NewDeviceMetadataType: Equatable {
    /// <p>The device group key.</p>
    public let deviceGroupKey: String?
    /// <p>The device key.</p>
    public let deviceKey: String?

    public init (
        deviceGroupKey: String? = nil,
        deviceKey: String? = nil
    )
    {
        self.deviceGroupKey = deviceGroupKey
        self.deviceKey = deviceKey
    }
}