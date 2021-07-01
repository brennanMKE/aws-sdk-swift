// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Model: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case contentType
        case description
        case id
        case name
        case schema
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contentType = contentType {
            try encodeContainer.encode(contentType, forKey: .contentType)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let schema = schema {
            try encodeContainer.encode(schema, forKey: .schema)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let schemaDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schema)
        schema = schemaDecoded
        let contentTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contentType)
        contentType = contentTypeDecoded
    }
}