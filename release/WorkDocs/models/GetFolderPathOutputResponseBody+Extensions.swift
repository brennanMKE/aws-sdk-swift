// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetFolderPathOutputResponseBody: Equatable {
    public let path: ResourcePath?
}

extension GetFolderPathOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case path = "Path"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pathDecoded = try containerValues.decodeIfPresent(ResourcePath.self, forKey: .path)
        path = pathDecoded
    }
}