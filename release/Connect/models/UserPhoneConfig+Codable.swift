// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UserPhoneConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case afterContactWorkTimeLimit = "AfterContactWorkTimeLimit"
        case autoAccept = "AutoAccept"
        case deskPhoneNumber = "DeskPhoneNumber"
        case phoneType = "PhoneType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if afterContactWorkTimeLimit != 0 {
            try encodeContainer.encode(afterContactWorkTimeLimit, forKey: .afterContactWorkTimeLimit)
        }
        if autoAccept != false {
            try encodeContainer.encode(autoAccept, forKey: .autoAccept)
        }
        if let deskPhoneNumber = deskPhoneNumber {
            try encodeContainer.encode(deskPhoneNumber, forKey: .deskPhoneNumber)
        }
        if let phoneType = phoneType {
            try encodeContainer.encode(phoneType.rawValue, forKey: .phoneType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let phoneTypeDecoded = try containerValues.decodeIfPresent(PhoneType.self, forKey: .phoneType)
        phoneType = phoneTypeDecoded
        let autoAcceptDecoded = try containerValues.decode(Bool.self, forKey: .autoAccept)
        autoAccept = autoAcceptDecoded
        let afterContactWorkTimeLimitDecoded = try containerValues.decode(Int.self, forKey: .afterContactWorkTimeLimit)
        afterContactWorkTimeLimit = afterContactWorkTimeLimitDecoded
        let deskPhoneNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deskPhoneNumber)
        deskPhoneNumber = deskPhoneNumberDecoded
    }
}