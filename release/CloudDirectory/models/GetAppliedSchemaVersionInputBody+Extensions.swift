// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetAppliedSchemaVersionInputBody: Equatable {
    public let schemaArn: String?
}

extension GetAppliedSchemaVersionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case schemaArn = "SchemaArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let schemaArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schemaArn)
        schemaArn = schemaArnDecoded
    }
}