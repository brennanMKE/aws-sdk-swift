// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InventoryResultItem: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case captureTime = "CaptureTime"
        case content = "Content"
        case contentHash = "ContentHash"
        case schemaVersion = "SchemaVersion"
        case typeName = "TypeName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let captureTime = captureTime {
            try encodeContainer.encode(captureTime, forKey: .captureTime)
        }
        if let content = content {
            var contentContainer = encodeContainer.nestedUnkeyedContainer(forKey: .content)
            for inventoryitementrylist0 in content {
                var inventoryitementrylist0Container = contentContainer.nestedContainer(keyedBy: Key.self)
                for (dictKey1, inventoryitementry1) in inventoryitementrylist0 {
                    try inventoryitementrylist0Container.encode(inventoryitementry1, forKey: Key(stringValue: dictKey1))
                }
            }
        }
        if let contentHash = contentHash {
            try encodeContainer.encode(contentHash, forKey: .contentHash)
        }
        if let schemaVersion = schemaVersion {
            try encodeContainer.encode(schemaVersion, forKey: .schemaVersion)
        }
        if let typeName = typeName {
            try encodeContainer.encode(typeName, forKey: .typeName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .typeName)
        typeName = typeNameDecoded
        let schemaVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schemaVersion)
        schemaVersion = schemaVersionDecoded
        let captureTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .captureTime)
        captureTime = captureTimeDecoded
        let contentHashDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contentHash)
        contentHash = contentHashDecoded
        let contentContainer = try containerValues.decodeIfPresent([[String: String?]?].self, forKey: .content)
        var contentDecoded0:[[String:String]]? = nil
        if let contentContainer = contentContainer {
            contentDecoded0 = [[String:String]]()
            for map0 in contentContainer {
                var contentContainerDecoded0: [String: String]? = nil
                if let map0 = map0 {
                    contentContainerDecoded0 = [String: String]()
                    for (key1, attributevalue1) in map0 {
                        if let attributevalue1 = attributevalue1 {
                            contentContainerDecoded0?[key1] = attributevalue1
                        }
                    }
                }
                if let contentContainerDecoded0 = contentContainerDecoded0 {
                    contentDecoded0?.append(contentContainerDecoded0)
                }
            }
        }
        content = contentDecoded0
    }
}