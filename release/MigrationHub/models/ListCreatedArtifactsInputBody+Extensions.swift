// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListCreatedArtifactsInputBody: Equatable {
    public let progressUpdateStream: String?
    public let migrationTaskName: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension ListCreatedArtifactsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case migrationTaskName = "MigrationTaskName"
        case nextToken = "NextToken"
        case progressUpdateStream = "ProgressUpdateStream"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let progressUpdateStreamDecoded = try containerValues.decodeIfPresent(String.self, forKey: .progressUpdateStream)
        progressUpdateStream = progressUpdateStreamDecoded
        let migrationTaskNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .migrationTaskName)
        migrationTaskName = migrationTaskNameDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}