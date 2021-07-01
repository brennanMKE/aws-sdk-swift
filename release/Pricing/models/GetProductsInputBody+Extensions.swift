// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetProductsInputBody: Equatable {
    public let serviceCode: String?
    public let filters: [Filter]?
    public let formatVersion: String?
    public let nextToken: String?
    public let maxResults: Int
}

extension GetProductsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case formatVersion = "FormatVersion"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serviceCode = "ServiceCode"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceCode)
        serviceCode = serviceCodeDecoded
        let filtersContainer = try containerValues.decodeIfPresent([Filter?].self, forKey: .filters)
        var filtersDecoded0:[Filter]? = nil
        if let filtersContainer = filtersContainer {
            filtersDecoded0 = [Filter]()
            for structure0 in filtersContainer {
                if let structure0 = structure0 {
                    filtersDecoded0?.append(structure0)
                }
            }
        }
        filters = filtersDecoded0
        let formatVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .formatVersion)
        formatVersion = formatVersionDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}