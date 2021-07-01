// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListParallelDataOutputResponseBody: Equatable {
    public let parallelDataPropertiesList: [ParallelDataProperties]?
    public let nextToken: String?
}

extension ListParallelDataOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case parallelDataPropertiesList = "ParallelDataPropertiesList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let parallelDataPropertiesListContainer = try containerValues.decodeIfPresent([ParallelDataProperties?].self, forKey: .parallelDataPropertiesList)
        var parallelDataPropertiesListDecoded0:[ParallelDataProperties]? = nil
        if let parallelDataPropertiesListContainer = parallelDataPropertiesListContainer {
            parallelDataPropertiesListDecoded0 = [ParallelDataProperties]()
            for structure0 in parallelDataPropertiesListContainer {
                if let structure0 = structure0 {
                    parallelDataPropertiesListDecoded0?.append(structure0)
                }
            }
        }
        parallelDataPropertiesList = parallelDataPropertiesListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}