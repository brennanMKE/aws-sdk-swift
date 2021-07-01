// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutBucketVersioningInputBody: Equatable {
    public let versioningConfiguration: VersioningConfiguration?
}

extension PutBucketVersioningInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case versioningConfiguration = "VersioningConfiguration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let versioningConfigurationDecoded = try containerValues.decodeIfPresent(VersioningConfiguration.self, forKey: .versioningConfiguration)
        versioningConfiguration = versioningConfigurationDecoded
    }
}