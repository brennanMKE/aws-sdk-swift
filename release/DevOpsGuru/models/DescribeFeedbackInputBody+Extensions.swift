// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeFeedbackInputBody: Equatable {
    public let insightId: String?
}

extension DescribeFeedbackInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case insightId = "InsightId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let insightIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .insightId)
        insightId = insightIdDecoded
    }
}