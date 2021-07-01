// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDirectoriesInputBody: Equatable {
    public let nextToken: String?
    public let maxResults: Int?
    public let state: DirectoryState?
}

extension ListDirectoriesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case state
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let stateDecoded = try containerValues.decodeIfPresent(DirectoryState.self, forKey: .state)
        state = stateDecoded
    }
}