// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NfsMountOptions: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let version = version {
            try encodeContainer.encode(version.rawValue, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let versionDecoded = try containerValues.decodeIfPresent(NfsVersion.self, forKey: .version)
        version = versionDecoded
    }
}