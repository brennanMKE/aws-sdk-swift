// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAuditSuppressionsOutputResponseBody: Equatable {
    public let suppressions: [AuditSuppression]?
    public let nextToken: String?
}

extension ListAuditSuppressionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case suppressions
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let suppressionsContainer = try containerValues.decodeIfPresent([AuditSuppression?].self, forKey: .suppressions)
        var suppressionsDecoded0:[AuditSuppression]? = nil
        if let suppressionsContainer = suppressionsContainer {
            suppressionsDecoded0 = [AuditSuppression]()
            for structure0 in suppressionsContainer {
                if let structure0 = structure0 {
                    suppressionsDecoded0?.append(structure0)
                }
            }
        }
        suppressions = suppressionsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}