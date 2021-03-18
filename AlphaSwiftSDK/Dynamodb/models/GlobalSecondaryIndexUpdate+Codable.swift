// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GlobalSecondaryIndexUpdate: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case create = "Create"
        case delete = "Delete"
        case update = "Update"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let create = create {
            try container.encode(create, forKey: .create)
        }
        if let delete = delete {
            try container.encode(delete, forKey: .delete)
        }
        if let update = update {
            try container.encode(update, forKey: .update)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let updateDecoded = try containerValues.decodeIfPresent(UpdateGlobalSecondaryIndexAction.self, forKey: .update)
        update = updateDecoded
        let createDecoded = try containerValues.decodeIfPresent(CreateGlobalSecondaryIndexAction.self, forKey: .create)
        create = createDecoded
        let deleteDecoded = try containerValues.decodeIfPresent(DeleteGlobalSecondaryIndexAction.self, forKey: .delete)
        delete = deleteDecoded
    }
}
