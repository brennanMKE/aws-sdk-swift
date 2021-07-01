// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A JSON object containing the following fields:</p>
public struct DescribeWorkingStorageOutputResponse: Equatable {
    /// <p>An array of the gateway's local disk IDs that are configured as working storage.
    ///          Each local disk ID is specified as a string (minimum length of 1 and maximum length of
    ///          300). If no local disks are configured as working storage, then the DiskIds array is
    ///          empty.</p>
    public let diskIds: [String]?
    /// <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    ///          operation to return a list of gateways for your account and AWS Region.</p>
    public let gatewayARN: String?
    /// <p>The total working storage in bytes allocated for the gateway. If no working storage is
    ///          configured for the gateway, this field returns 0.</p>
    public let workingStorageAllocatedInBytes: Int
    /// <p>The total working storage in bytes in use by the gateway. If no working storage is
    ///          configured for the gateway, this field returns 0.</p>
    public let workingStorageUsedInBytes: Int

    public init (
        diskIds: [String]? = nil,
        gatewayARN: String? = nil,
        workingStorageAllocatedInBytes: Int = 0,
        workingStorageUsedInBytes: Int = 0
    )
    {
        self.diskIds = diskIds
        self.gatewayARN = gatewayARN
        self.workingStorageAllocatedInBytes = workingStorageAllocatedInBytes
        self.workingStorageUsedInBytes = workingStorageUsedInBytes
    }
}

extension DescribeWorkingStorageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeWorkingStorageOutputResponse(diskIds: \(String(describing: diskIds)), gatewayARN: \(String(describing: gatewayARN)), workingStorageAllocatedInBytes: \(String(describing: workingStorageAllocatedInBytes)), workingStorageUsedInBytes: \(String(describing: workingStorageUsedInBytes)))"}
}