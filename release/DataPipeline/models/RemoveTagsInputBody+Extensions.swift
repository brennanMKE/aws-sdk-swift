// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RemoveTagsInputBody: Equatable {
    public let pipelineId: String?
    public let tagKeys: [String]?
}

extension RemoveTagsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case pipelineId
        case tagKeys
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelineIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pipelineId)
        pipelineId = pipelineIdDecoded
        let tagKeysContainer = try containerValues.decodeIfPresent([String?].self, forKey: .tagKeys)
        var tagKeysDecoded0:[String]? = nil
        if let tagKeysContainer = tagKeysContainer {
            tagKeysDecoded0 = [String]()
            for string0 in tagKeysContainer {
                if let string0 = string0 {
                    tagKeysDecoded0?.append(string0)
                }
            }
        }
        tagKeys = tagKeysDecoded0
    }
}