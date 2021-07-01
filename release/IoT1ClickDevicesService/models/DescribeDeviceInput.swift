// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDeviceInput: Equatable {
    /// <p>The unique identifier of the device.</p>
    public let deviceId: String?

    public init (
        deviceId: String? = nil
    )
    {
        self.deviceId = deviceId
    }
}

extension DescribeDeviceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDeviceInput(deviceId: \(String(describing: deviceId)))"}
}