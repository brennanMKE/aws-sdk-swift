// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Lists the device's response, as an administrator.</p>
public struct AdminListDevicesOutput: Equatable {
    /// <p>The devices in the list of devices response.</p>
    public let devices: [DeviceType]?
    /// <p>The pagination token.</p>
    public let paginationToken: String?

    public init (
        devices: [DeviceType]? = nil,
        paginationToken: String? = nil
    )
    {
        self.devices = devices
        self.paginationToken = paginationToken
    }
}
