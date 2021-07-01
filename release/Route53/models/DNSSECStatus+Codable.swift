// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DNSSECStatus: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case serveSignature = "ServeSignature"
        case statusMessage = "StatusMessage"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("https://route53.amazonaws.com/doc/2013-04-01/", forKey: Key("xmlns"))
        }
        if let serveSignature = serveSignature {
            try container.encode(serveSignature, forKey: Key("serveSignature"))
        }
        if let statusMessage = statusMessage {
            try container.encode(statusMessage, forKey: Key("statusMessage"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serveSignatureDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serveSignature)
        serveSignature = serveSignatureDecoded
        let statusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusMessage)
        statusMessage = statusMessageDecoded
    }
}