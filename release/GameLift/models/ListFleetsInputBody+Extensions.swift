// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFleetsInputBody: Equatable {
    public let buildId: String?
    public let scriptId: String?
    public let limit: Int?
    public let nextToken: String?
}

extension ListFleetsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case buildId = "BuildId"
        case limit = "Limit"
        case nextToken = "NextToken"
        case scriptId = "ScriptId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let buildIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .buildId)
        buildId = buildIdDecoded
        let scriptIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scriptId)
        scriptId = scriptIdDecoded
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}