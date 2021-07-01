// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AccessDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessLocation = "AccessLocation"
        case accessMethod = "AccessMethod"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessLocation = accessLocation {
            try encodeContainer.encode(accessLocation, forKey: .accessLocation)
        }
        if let accessMethod = accessMethod {
            try encodeContainer.encode(accessMethod, forKey: .accessMethod)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessMethodDecoded = try containerValues.decodeIfPresent(AccessMethod.self, forKey: .accessMethod)
        accessMethod = accessMethodDecoded
        let accessLocationDecoded = try containerValues.decodeIfPresent(GeneralName.self, forKey: .accessLocation)
        accessLocation = accessLocationDecoded
    }
}