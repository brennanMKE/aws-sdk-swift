// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBudgetsForResourceInputBody: Equatable {
    public let acceptLanguage: String?
    public let resourceId: String?
    public let pageSize: Int
    public let pageToken: String?
}

extension ListBudgetsForResourceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case pageSize = "PageSize"
        case pageToken = "PageToken"
        case resourceId = "ResourceId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let acceptLanguageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceptLanguage)
        acceptLanguage = acceptLanguageDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let pageSizeDecoded = try containerValues.decode(Int.self, forKey: .pageSize)
        pageSize = pageSizeDecoded
        let pageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pageToken)
        pageToken = pageTokenDecoded
    }
}