// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Cvss: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case baseScore = "BaseScore"
        case baseVector = "BaseVector"
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if baseScore != 0.0 {
            try encodeContainer.encode(baseScore, forKey: .baseScore)
        }
        if let baseVector = baseVector {
            try encodeContainer.encode(baseVector, forKey: .baseVector)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let baseScoreDecoded = try containerValues.decode(Double.self, forKey: .baseScore)
        baseScore = baseScoreDecoded
        let baseVectorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .baseVector)
        baseVector = baseVectorDecoded
    }
}