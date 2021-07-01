// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CertificateValidity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case notAfter
        case notBefore
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let notAfter = notAfter {
            try encodeContainer.encode(notAfter.timeIntervalSince1970, forKey: .notAfter)
        }
        if let notBefore = notBefore {
            try encodeContainer.encode(notBefore.timeIntervalSince1970, forKey: .notBefore)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let notBeforeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .notBefore)
        notBefore = notBeforeDecoded
        let notAfterDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .notAfter)
        notAfter = notAfterDecoded
    }
}