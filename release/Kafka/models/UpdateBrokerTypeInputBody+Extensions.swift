// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateBrokerTypeInputBody: Equatable {
    public let currentVersion: String?
    public let targetInstanceType: String?
}

extension UpdateBrokerTypeInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case currentVersion = "currentVersion"
        case targetInstanceType = "targetInstanceType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let currentVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .currentVersion)
        currentVersion = currentVersionDecoded
        let targetInstanceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetInstanceType)
        targetInstanceType = targetInstanceTypeDecoded
    }
}