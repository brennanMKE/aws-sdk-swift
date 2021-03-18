// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ExecuteStatementInputBody: Equatable {
    public let statement: String?
    public let parameters: [AttributeValue]?
    public let consistentRead: Bool?
    public let nextToken: String?
}

extension ExecuteStatementInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case consistentRead = "ConsistentRead"
        case nextToken = "NextToken"
        case parameters = "Parameters"
        case statement = "Statement"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statementDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statement)
        statement = statementDecoded
        let parametersContainer = try containerValues.decodeIfPresent([AttributeValue].self, forKey: .parameters)
        var parametersDecoded0:[AttributeValue]? = nil
        if let parametersContainer = parametersContainer {
            parametersDecoded0 = [AttributeValue]()
            for union0 in parametersContainer {
                parametersDecoded0?.append(union0)
            }
        }
        parameters = parametersDecoded0
        let consistentReadDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .consistentRead)
        consistentRead = consistentReadDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}
