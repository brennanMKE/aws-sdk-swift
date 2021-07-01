// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchRevokePermissionsInputBody: Equatable {
    public let catalogId: String?
    public let entries: [BatchPermissionsRequestEntry]?
}

extension BatchRevokePermissionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case catalogId = "CatalogId"
        case entries = "Entries"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let catalogIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .catalogId)
        catalogId = catalogIdDecoded
        let entriesContainer = try containerValues.decodeIfPresent([BatchPermissionsRequestEntry?].self, forKey: .entries)
        var entriesDecoded0:[BatchPermissionsRequestEntry]? = nil
        if let entriesContainer = entriesContainer {
            entriesDecoded0 = [BatchPermissionsRequestEntry]()
            for structure0 in entriesContainer {
                if let structure0 = structure0 {
                    entriesDecoded0?.append(structure0)
                }
            }
        }
        entries = entriesDecoded0
    }
}