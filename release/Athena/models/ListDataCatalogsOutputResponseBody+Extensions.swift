// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDataCatalogsOutputResponseBody: Equatable {
    public let dataCatalogsSummary: [DataCatalogSummary]?
    public let nextToken: String?
}

extension ListDataCatalogsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dataCatalogsSummary = "DataCatalogsSummary"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataCatalogsSummaryContainer = try containerValues.decodeIfPresent([DataCatalogSummary?].self, forKey: .dataCatalogsSummary)
        var dataCatalogsSummaryDecoded0:[DataCatalogSummary]? = nil
        if let dataCatalogsSummaryContainer = dataCatalogsSummaryContainer {
            dataCatalogsSummaryDecoded0 = [DataCatalogSummary]()
            for structure0 in dataCatalogsSummaryContainer {
                if let structure0 = structure0 {
                    dataCatalogsSummaryDecoded0?.append(structure0)
                }
            }
        }
        dataCatalogsSummary = dataCatalogsSummaryDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}