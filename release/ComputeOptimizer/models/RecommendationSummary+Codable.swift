// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RecommendationSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId
        case recommendationResourceType
        case summaries
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let recommendationResourceType = recommendationResourceType {
            try encodeContainer.encode(recommendationResourceType.rawValue, forKey: .recommendationResourceType)
        }
        if let summaries = summaries {
            var summariesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .summaries)
            for summaries0 in summaries {
                try summariesContainer.encode(summaries0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let summariesContainer = try containerValues.decodeIfPresent([Summary?].self, forKey: .summaries)
        var summariesDecoded0:[Summary]? = nil
        if let summariesContainer = summariesContainer {
            summariesDecoded0 = [Summary]()
            for structure0 in summariesContainer {
                if let structure0 = structure0 {
                    summariesDecoded0?.append(structure0)
                }
            }
        }
        summaries = summariesDecoded0
        let recommendationResourceTypeDecoded = try containerValues.decodeIfPresent(RecommendationSourceType.self, forKey: .recommendationResourceType)
        recommendationResourceType = recommendationResourceTypeDecoded
        let accountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountId)
        accountId = accountIdDecoded
    }
}