// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GlobalSecondaryIndex: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case keySchema = "KeySchema"
        case projection = "Projection"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let indexName = indexName {
            try container.encode(indexName, forKey: .indexName)
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
        let provisionedThroughputDecoded = try containerValues.decodeIfPresent(ProvisionedThroughput.self, forKey: .provisionedThroughput)
        provisionedThroughput = provisionedThroughputDecoded
    }
}
