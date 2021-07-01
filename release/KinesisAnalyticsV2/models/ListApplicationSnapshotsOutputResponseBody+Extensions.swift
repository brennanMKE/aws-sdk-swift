// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListApplicationSnapshotsOutputResponseBody: Equatable {
    public let snapshotSummaries: [SnapshotDetails]?
    public let nextToken: String?
}

extension ListApplicationSnapshotsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case snapshotSummaries = "SnapshotSummaries"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let snapshotSummariesContainer = try containerValues.decodeIfPresent([SnapshotDetails?].self, forKey: .snapshotSummaries)
        var snapshotSummariesDecoded0:[SnapshotDetails]? = nil
        if let snapshotSummariesContainer = snapshotSummariesContainer {
            snapshotSummariesDecoded0 = [SnapshotDetails]()
            for structure0 in snapshotSummariesContainer {
                if let structure0 = structure0 {
                    snapshotSummariesDecoded0?.append(structure0)
                }
            }
        }
        snapshotSummaries = snapshotSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}