// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsCertificateManagerCertificateExtendedKeyUsage: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case oId = "OId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let oId = oId {
            try encodeContainer.encode(oId, forKey: .oId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let oIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .oId)
        oId = oIdDecoded
    }
}