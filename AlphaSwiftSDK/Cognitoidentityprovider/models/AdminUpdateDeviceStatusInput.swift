// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request to update the device status, as an administrator.</p>
public struct AdminUpdateDeviceStatusInput: Equatable {
    /// <p>The device key.</p>
    public let deviceKey: String?
    /// <p>The status indicating whether a device has been remembered or not.</p>
    public let deviceRememberedStatus: DeviceRememberedStatusType?
    /// <p>The user pool ID.</p>
    public let userPoolId: String?
    /// <p>The user name.</p>
    public let username: String?

    public init (
        deviceKey: String? = nil,
        deviceRememberedStatus: DeviceRememberedStatusType? = nil,
        userPoolId: String? = nil,
        username: String? = nil
    )
    {
        self.deviceKey = deviceKey
        self.deviceRememberedStatus = deviceRememberedStatus
        self.userPoolId = userPoolId
        self.username = username
    }
}
