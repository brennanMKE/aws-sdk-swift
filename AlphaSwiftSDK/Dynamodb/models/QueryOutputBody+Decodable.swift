// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct QueryOutputBody: Equatable {
    public let items: [[String:AttributeValue]?]?
    public let count: Int
    public let scannedCount: Int
    public let lastEvaluatedKey: [String:AttributeValue]?
    public let consumedCapacity: ConsumedCapacity?
}

extension QueryOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case consumedCapacity = "ConsumedCapacity"
        case count = "Count"
        case items = "Items"
        case lastEvaluatedKey = "LastEvaluatedKey"
        case scannedCount = "ScannedCount"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemsContainer = try containerValues.decodeIfPresent([[String:AttributeValue]?].self, forKey: .items)
        var itemsDecoded0:[[String:AttributeValue]?]? = nil
        if let itemsContainer = itemsContainer {
            itemsDecoded0 = [[String:AttributeValue]?]()
            for map0 in itemsContainer {
                var itemsContainerDecoded0 = [String:AttributeValue]()
                if let map0 = map0 {
                    for (key1, attributevalue1) in map0 {
                        itemsContainerDecoded0[key1] = attributevalue1
                    }
                }
                itemsDecoded0?.append(itemsContainerDecoded0)
            }
        }
        items = itemsDecoded0
        let countDecoded = try containerValues.decode(Int.self, forKey: .count)
        count = countDecoded
        let scannedCountDecoded = try containerValues.decode(Int.self, forKey: .scannedCount)
        scannedCount = scannedCountDecoded
        let lastEvaluatedKeyContainer = try containerValues.decodeIfPresent([String:AttributeValue].self, forKey: .lastEvaluatedKey)
        var lastEvaluatedKeyDecoded0: [String:AttributeValue]? = nil
        if let lastEvaluatedKeyContainer = lastEvaluatedKeyContainer {
            lastEvaluatedKeyDecoded0 = [String:AttributeValue]()
            for (key0, attributevalue0) in lastEvaluatedKeyContainer {
                lastEvaluatedKeyDecoded0?[key0] = attributevalue0
            }
        }
        lastEvaluatedKey = lastEvaluatedKeyDecoded0
        let consumedCapacityDecoded = try containerValues.decodeIfPresent(ConsumedCapacity.self, forKey: .consumedCapacity)
        consumedCapacity = consumedCapacityDecoded
    }
}