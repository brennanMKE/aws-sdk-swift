// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLaunchPathsInputBody: Equatable {
    public let acceptLanguage: String?
    public let productId: String?
    public let pageSize: Int
    public let pageToken: String?
}

extension ListLaunchPathsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case pageSize = "PageSize"
        case pageToken = "PageToken"
        case productId = "ProductId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let acceptLanguageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceptLanguage)
        acceptLanguage = acceptLanguageDecoded
        let productIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .productId)
        productId = productIdDecoded
        let pageSizeDecoded = try containerValues.decode(Int.self, forKey: .pageSize)
        pageSize = pageSizeDecoded
        let pageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pageToken)
        pageToken = pageTokenDecoded
    }
}