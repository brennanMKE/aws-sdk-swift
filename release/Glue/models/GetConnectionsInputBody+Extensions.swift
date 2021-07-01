// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetConnectionsInputBody: Equatable {
    public let catalogId: String?
    public let filter: GetConnectionsFilter?
    public let hidePassword: Bool
    public let nextToken: String?
    public let maxResults: Int?
}

extension GetConnectionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case catalogId = "CatalogId"
        case filter = "Filter"
        case hidePassword = "HidePassword"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let catalogIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalogId)
        catalogId = catalogIdDecoded
        let filterDecoded = try containerValues.decodeIfPresent(GetConnectionsFilter.self, forKey: .filter)
        filter = filterDecoded
        let hidePasswordDecoded = try containerValues.decode(Bool.self, forKey: .hidePassword)
        hidePassword = hidePasswordDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}