// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Corresponds to SCTE-35 delivery_not_restricted_flag parameter. To declare delivery restrictions, include this element and its four "restriction" flags. To declare that there are no restrictions, omit this element.
public struct Scte35DeliveryRestrictions: Equatable {
    /// Corresponds to SCTE-35 archive_allowed_flag.
    public let archiveAllowedFlag: Scte35ArchiveAllowedFlag?
    /// Corresponds to SCTE-35 device_restrictions parameter.
    public let deviceRestrictions: Scte35DeviceRestrictions?
    /// Corresponds to SCTE-35 no_regional_blackout_flag parameter.
    public let noRegionalBlackoutFlag: Scte35NoRegionalBlackoutFlag?
    /// Corresponds to SCTE-35 web_delivery_allowed_flag parameter.
    public let webDeliveryAllowedFlag: Scte35WebDeliveryAllowedFlag?

    public init (
        archiveAllowedFlag: Scte35ArchiveAllowedFlag? = nil,
        deviceRestrictions: Scte35DeviceRestrictions? = nil,
        noRegionalBlackoutFlag: Scte35NoRegionalBlackoutFlag? = nil,
        webDeliveryAllowedFlag: Scte35WebDeliveryAllowedFlag? = nil
    )
    {
        self.archiveAllowedFlag = archiveAllowedFlag
        self.deviceRestrictions = deviceRestrictions
        self.noRegionalBlackoutFlag = noRegionalBlackoutFlag
        self.webDeliveryAllowedFlag = webDeliveryAllowedFlag
    }
}

extension Scte35DeliveryRestrictions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Scte35DeliveryRestrictions(archiveAllowedFlag: \(String(describing: archiveAllowedFlag)), deviceRestrictions: \(String(describing: deviceRestrictions)), noRegionalBlackoutFlag: \(String(describing: noRegionalBlackoutFlag)), webDeliveryAllowedFlag: \(String(describing: webDeliveryAllowedFlag)))"}
}