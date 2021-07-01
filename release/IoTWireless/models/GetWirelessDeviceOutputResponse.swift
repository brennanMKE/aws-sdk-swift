// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetWirelessDeviceOutputResponse: Equatable {
    /// <p>The Amazon Resource Name of the resource.</p>
    public let arn: String?
    /// <p>The description of the resource.</p>
    public let description: String?
    /// <p>The name of the destination to which the device is assigned.</p>
    public let destinationName: String?
    /// <p>The ID of the wireless device.</p>
    public let id: String?
    /// <p>Information about the wireless device.</p>
    public let loRaWAN: LoRaWANDevice?
    /// <p>The name of the resource.</p>
    public let name: String?
    /// <p>Sidewalk device object.</p>
    public let sidewalk: SidewalkDevice?
    /// <p>The ARN of the thing associated with the wireless device.</p>
    public let thingArn: String?
    /// <p>The name of the thing associated with the wireless device. The value is empty if a thing isn't associated with the device.</p>
    public let thingName: String?
    /// <p>The wireless device type.</p>
    public let type: WirelessDeviceType?

    public init (
        arn: String? = nil,
        description: String? = nil,
        destinationName: String? = nil,
        id: String? = nil,
        loRaWAN: LoRaWANDevice? = nil,
        name: String? = nil,
        sidewalk: SidewalkDevice? = nil,
        thingArn: String? = nil,
        thingName: String? = nil,
        type: WirelessDeviceType? = nil
    )
    {
        self.arn = arn
        self.description = description
        self.destinationName = destinationName
        self.id = id
        self.loRaWAN = loRaWAN
        self.name = name
        self.sidewalk = sidewalk
        self.thingArn = thingArn
        self.thingName = thingName
        self.type = type
    }
}

extension GetWirelessDeviceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetWirelessDeviceOutputResponse(arn: \(String(describing: arn)), description: \(String(describing: description)), destinationName: \(String(describing: destinationName)), id: \(String(describing: id)), loRaWAN: \(String(describing: loRaWAN)), name: \(String(describing: name)), sidewalk: \(String(describing: sidewalk)), thingArn: \(String(describing: thingArn)), thingName: \(String(describing: thingName)), type: \(String(describing: type)))"}
}