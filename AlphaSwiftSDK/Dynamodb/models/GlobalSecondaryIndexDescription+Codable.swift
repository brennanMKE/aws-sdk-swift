// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GlobalSecondaryIndexDescription: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case backfilling = "Backfilling"
        case indexArn = "IndexArn"
        case indexName = "IndexName"
        case indexSizeBytes = "IndexSizeBytes"
        case indexStatus = "IndexStatus"
        case itemCount = "ItemCount"
        case keySchema = "KeySchema"
        case projection = "Projection"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let backfilling = backfilling {
            try container.encode(backfilling, forKey: .backfilling)
        }
        if let indexArn = indexArn {
            try container.encode(indexArn, forKey: .indexArn)
        }
        if let indexName = indexName {
            try container.encode(indexName, forKey: .indexName)
        }
        if indexSizeBytes != 0 {
            try container.encode(indexSizeBytes, forKey: .indexSizeBytes)
        }
        if let indexStatus = indexStatus {
            try container.encode(indexStatus.rawValue, forKey: .indexStatus)
        }
        if itemCount != 0 {
            try container.encode(itemCount, forKey: .itemCount)
        }
        if let keySchema = keySchema {
            var keySchemaContainer = container.nestedUnkeyedContainer(forKey: .keySchema)
            for keyschema0 in keySchema {
                try keySchemaContainer.encode(keyschema0)
            }
        }
        if let projection = projection {
            try container.encode(projection, forKey: .projection)
        }
        if let provisionedThroughput = provisionedThroughput {
            try container.encode(provisionedThroughput, forKey: .provisionedThroughput)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let keySchemaContainer = try containerValues.decodeIfPresent([KeySchemaElement].self, forKey: .keySchema)
        var keySchemaDecoded0:[KeySchemaElement]? = nil
        if let keySchemaContainer = keySchemaContainer {
            keySchemaDecoded0 = [KeySchemaElement]()
            for structure0 in keySchemaContainer {
                keySchemaDecoded0?.append(structure0)
            }
        }
        keySchema = keySchemaDecoded0
        let projectionDecoded = try containerValues.decodeIfPresent(Projection.self, forKey: .projection)
        projection = projectionDecoded
        let indexStatusDecoded = try containerValues.decodeIfPresent(IndexStatus.self, forKey: .indexStatus)
        indexStatus = indexStatusDecoded
        let backfillingDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .backfilling)
        backfilling = backfillingDecoded
        let provisionedThroughputDecoded = try containerValues.decodeIfPresent(ProvisionedThroughputDescription.self, forKey: .provisionedThroughput)
        provisionedThroughput = provisionedThroughputDecoded
        let indexSizeBytesDecoded = try containerValues.decode(Int.self, forKey: .indexSizeBytes)
        indexSizeBytes = indexSizeBytesDecoded
        let itemCountDecoded = try containerValues.decode(Int.self, forKey: .itemCount)
        itemCount = itemCountDecoded
        let indexArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexArn)
        indexArn = indexArnDecoded
    }
}
