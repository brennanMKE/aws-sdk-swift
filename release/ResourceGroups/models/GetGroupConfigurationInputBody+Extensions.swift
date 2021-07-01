// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetGroupConfigurationInputBody: Equatable {
    public let group: String?
}

extension GetGroupConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case group = "Group"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .group)
        group = groupDecoded
    }
}