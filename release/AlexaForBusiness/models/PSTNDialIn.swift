// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The information for public switched telephone network (PSTN) conferencing.</p>
public struct PSTNDialIn: Equatable {
    /// <p>The zip code.</p>
    public let countryCode: String?
    /// <p>The delay duration before Alexa enters the conference ID with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>
    public let oneClickIdDelay: String?
    /// <p>The delay duration before Alexa enters the conference pin with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>
    public let oneClickPinDelay: String?
    /// <p>The phone number to call to join the conference.</p>
    public let phoneNumber: String?

    public init (
        countryCode: String? = nil,
        oneClickIdDelay: String? = nil,
        oneClickPinDelay: String? = nil,
        phoneNumber: String? = nil
    )
    {
        self.countryCode = countryCode
        self.oneClickIdDelay = oneClickIdDelay
        self.oneClickPinDelay = oneClickPinDelay
        self.phoneNumber = phoneNumber
    }
}

extension PSTNDialIn: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PSTNDialIn(countryCode: \(String(describing: countryCode)), oneClickIdDelay: \(String(describing: oneClickIdDelay)), oneClickPinDelay: \(String(describing: oneClickPinDelay)), phoneNumber: \(String(describing: phoneNumber)))"}
}