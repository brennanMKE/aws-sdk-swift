// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FindingsFilterListItem: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case action = "action"
        case arn = "arn"
        case id = "id"
        case name = "name"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let action = action {
            try encodeContainer.encode(action.rawValue, forKey: .action)
        }
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionDecoded = try containerValues.decodeIfPresent(FindingsFilterAction.self, forKey: .action)
        action = actionDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, __string0) in tagsContainer {
                if let __string0 = __string0 {
                    tagsDecoded0?[key0] = __string0
                }
            }
        }
        tags = tagsDecoded0
    }
}