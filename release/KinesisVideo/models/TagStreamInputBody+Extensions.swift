// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct TagStreamInputBody: Equatable {
    public let streamARN: String?
    public let streamName: String?
    public let tags: [String:String]?
}

extension TagStreamInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case streamARN = "StreamARN"
        case streamName = "StreamName"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamARN)
        streamARN = streamARNDecoded
        let streamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamName)
        streamName = streamNameDecoded
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