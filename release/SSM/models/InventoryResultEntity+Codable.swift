// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InventoryResultEntity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case id = "Id"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let data = data {
            var dataContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .data)
            for (dictKey0, inventoryresultitemmap0) in data {
                try dataContainer.encode(inventoryresultitemmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let dataContainer = try containerValues.decodeIfPresent([String: InventoryResultItem?].self, forKey: .data)
        var dataDecoded0: [String:InventoryResultItem]? = nil
        if let dataContainer = dataContainer {
            dataDecoded0 = [String:InventoryResultItem]()
            for (key0, inventoryresultitem0) in dataContainer {
                if let inventoryresultitem0 = inventoryresultitem0 {
                    dataDecoded0?[key0] = inventoryresultitem0
                }
            }
        }
        data = dataDecoded0
    }
}