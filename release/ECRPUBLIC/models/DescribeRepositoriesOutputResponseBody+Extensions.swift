// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeRepositoriesOutputResponseBody: Equatable {
    public let repositories: [Repository]?
    public let nextToken: String?
}

extension DescribeRepositoriesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case repositories
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoriesContainer = try containerValues.decodeIfPresent([Repository?].self, forKey: .repositories)
        var repositoriesDecoded0:[Repository]? = nil
        if let repositoriesContainer = repositoriesContainer {
            repositoriesDecoded0 = [Repository]()
            for structure0 in repositoriesContainer {
                if let structure0 = structure0 {
                    repositoriesDecoded0?.append(structure0)
                }
            }
        }
        repositories = repositoriesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}