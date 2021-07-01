// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdatePartnerAccountInputBody: Equatable {
    public let sidewalk: SidewalkUpdateAccount?
}

extension UpdatePartnerAccountInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case sidewalk = "Sidewalk"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sidewalkDecoded = try containerValues.decodeIfPresent(SidewalkUpdateAccount.self, forKey: .sidewalk)
        sidewalk = sidewalkDecoded
    }
}