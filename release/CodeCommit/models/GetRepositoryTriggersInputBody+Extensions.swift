// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRepositoryTriggersInputBody: Equatable {
    public let repositoryName: String?
}

extension GetRepositoryTriggersInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case repositoryName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .repositoryName)
        repositoryName = repositoryNameDecoded
    }
}