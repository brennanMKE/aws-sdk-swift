// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetOperationsOutputResponseBody: Equatable {
    public let operations: [Operation]?
    public let nextPageToken: String?
}

extension GetOperationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextPageToken
        case operations
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let operationsContainer = try containerValues.decodeIfPresent([Operation?].self, forKey: .operations)
        var operationsDecoded0:[Operation]? = nil
        if let operationsContainer = operationsContainer {
            operationsDecoded0 = [Operation]()
            for structure0 in operationsContainer {
                if let structure0 = structure0 {
                    operationsDecoded0?.append(structure0)
                }
            }
        }
        operations = operationsDecoded0
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
    }
}