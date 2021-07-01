// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IdentityInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case identityName = "IdentityName"
        case identityType = "IdentityType"
        case sendingEnabled = "SendingEnabled"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let identityName = identityName {
            try encodeContainer.encode(identityName, forKey: .identityName)
        }
        if let identityType = identityType {
            try encodeContainer.encode(identityType.rawValue, forKey: .identityType)
        }
        if sendingEnabled != false {
            try encodeContainer.encode(sendingEnabled, forKey: .sendingEnabled)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityTypeDecoded = try containerValues.decodeIfPresent(IdentityType.self, forKey: .identityType)
        identityType = identityTypeDecoded
        let identityNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityName)
        identityName = identityNameDecoded
        let sendingEnabledDecoded = try containerValues.decode(Bool.self, forKey: .sendingEnabled)
        sendingEnabled = sendingEnabledDecoded
    }
}