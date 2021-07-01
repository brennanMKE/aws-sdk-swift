// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ImportPlaybackKeyPairInputBody: Equatable {
    public let publicKeyMaterial: String?
    public let name: String?
    public let tags: [String:String]?
}

extension ImportPlaybackKeyPairInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case name
        case publicKeyMaterial
        case tags
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let publicKeyMaterialDecoded = try containerValues.decodeIfPresent(String.self, forKey: .publicKeyMaterial)
        publicKeyMaterial = publicKeyMaterialDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                if let tagvalue0 = tagvalue0 {
                    tagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        tags = tagsDecoded0
    }
}