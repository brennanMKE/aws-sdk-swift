// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ExportSchemaOutputResponseBody: Equatable {
    public let content: String?
    public let schemaArn: String?
    public let schemaName: String?
    public let schemaVersion: String?
    public let type: String?
}

extension ExportSchemaOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case content = "Content"
        case schemaArn = "SchemaArn"
        case schemaName = "SchemaName"
        case schemaVersion = "SchemaVersion"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .content)
        content = contentDecoded
        let schemaArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schemaArn)
        schemaArn = schemaArnDecoded
        let schemaNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schemaName)
        schemaName = schemaNameDecoded
        let schemaVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schemaVersion)
        schemaVersion = schemaVersionDecoded
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
    }
}