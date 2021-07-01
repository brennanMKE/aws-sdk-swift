// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListExecutionsOutputResponseBody: Equatable {
    public let executions: [ExecutionListItem]?
    public let nextToken: String?
}

extension ListExecutionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case executions
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let executionsContainer = try containerValues.decodeIfPresent([ExecutionListItem?].self, forKey: .executions)
        var executionsDecoded0:[ExecutionListItem]? = nil
        if let executionsContainer = executionsContainer {
            executionsDecoded0 = [ExecutionListItem]()
            for structure0 in executionsContainer {
                if let structure0 = structure0 {
                    executionsDecoded0?.append(structure0)
                }
            }
        }
        executions = executionsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}