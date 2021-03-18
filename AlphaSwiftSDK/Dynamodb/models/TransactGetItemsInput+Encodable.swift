// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension TransactGetItemsInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case transactItems = "TransactItems"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let returnConsumedCapacity = returnConsumedCapacity {
            try container.encode(returnConsumedCapacity.rawValue, forKey: .returnConsumedCapacity)
        }
        if let transactItems = transactItems {
            var transactItemsContainer = container.nestedUnkeyedContainer(forKey: .transactItems)
            for transactgetitemlist0 in transactItems {
                try transactItemsContainer.encode(transactgetitemlist0)
            }
        }
    }
}
