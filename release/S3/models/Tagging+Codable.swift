// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Tagging: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case tagSet = "TagSet"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let tagSet = tagSet {
            var tagSetContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("tagSet"))
            for tag0 in tagSet {
                try tagSetContainer.encode(tag0, forKey: Key("Tag"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.tagSet) {
            struct KeyVal0{struct Tag{}}
            let tagSetWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Tag>.CodingKeys.self, forKey: .tagSet)
            if let tagSetWrappedContainer = tagSetWrappedContainer {
                let tagSetContainer = try tagSetWrappedContainer.decodeIfPresent([Tag].self, forKey: .member)
                var tagSetBuffer:[Tag]? = nil
                if let tagSetContainer = tagSetContainer {
                    tagSetBuffer = [Tag]()
                    for structureContainer0 in tagSetContainer {
                        tagSetBuffer?.append(structureContainer0)
                    }
                }
                tagSet = tagSetBuffer
            } else {
                tagSet = []
            }
        } else {
            tagSet = nil
        }
    }
}