// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ExecuteStatementInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case consistentRead = "ConsistentRead"
        case nextToken = "NextToken"
        case parameters = "Parameters"
        case statement = "Statement"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let consistentRead = consistentRead {
            try container.encode(consistentRead, forKey: .consistentRead)
        }
        if let nextToken = nextToken {
            try container.encode(nextToken, forKey: .nextToken)
        }
        if let parameters = parameters {
            var parametersContainer = container.nestedUnkeyedContainer(forKey: .parameters)
            for preparedstatementparameters0 in parameters {
                try parametersContainer.encode(preparedstatementparameters0)
            }
        }
        if let statement = statement {
            try container.encode(statement, forKey: .statement)
        }
    }
}
