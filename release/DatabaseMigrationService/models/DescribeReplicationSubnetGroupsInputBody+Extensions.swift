// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeReplicationSubnetGroupsInputBody: Equatable {
    public let filters: [Filter]?
    public let maxRecords: Int?
    public let marker: String?
}

extension DescribeReplicationSubnetGroupsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
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
        let maxRecordsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxRecords)
        maxRecords = maxRecordsDecoded
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}