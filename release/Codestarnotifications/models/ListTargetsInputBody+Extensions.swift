// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListTargetsInputBody: Equatable {
    public let filters: [ListTargetsFilter]?
    public let nextToken: String?
    public let maxResults: Int
}

extension ListTargetsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let filtersContainer = try containerValues.decodeIfPresent([ListTargetsFilter?].self, forKey: .filters)
        var filtersDecoded0:[ListTargetsFilter]? = nil
        if let filtersContainer = filtersContainer {
            filtersDecoded0 = [ListTargetsFilter]()
            for structure0 in filtersContainer {
                if let structure0 = structure0 {
                    filtersDecoded0?.append(structure0)
                }
            }
        }
        filters = filtersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}