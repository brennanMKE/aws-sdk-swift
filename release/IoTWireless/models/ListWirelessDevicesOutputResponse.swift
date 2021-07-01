// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListWirelessDevicesOutputResponse: Equatable {
    /// <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    public let nextToken: String?
    /// <p>The ID of the wireless device.</p>
    public let wirelessDeviceList: [WirelessDeviceStatistics]?

    public init (
        nextToken: String? = nil,
        wirelessDeviceList: [WirelessDeviceStatistics]? = nil
    )
    {
        self.nextToken = nextToken
        self.wirelessDeviceList = wirelessDeviceList
    }
}

extension ListWirelessDevicesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListWirelessDevicesOutputResponse(nextToken: \(String(describing: nextToken)), wirelessDeviceList: \(String(describing: wirelessDeviceList)))"}
}