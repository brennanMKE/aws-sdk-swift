// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartReplicationTaskInputBody: Equatable {
    public let replicationTaskArn: String?
    public let startReplicationTaskType: StartReplicationTaskTypeValue?
    public let cdcStartTime: Date?
    public let cdcStartPosition: String?
    public let cdcStopPosition: String?
}

extension StartReplicationTaskInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cdcStartPosition = "CdcStartPosition"
        case cdcStartTime = "CdcStartTime"
        case cdcStopPosition = "CdcStopPosition"
        case replicationTaskArn = "ReplicationTaskArn"
        case startReplicationTaskType = "StartReplicationTaskType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationTaskArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationTaskArn)
        replicationTaskArn = replicationTaskArnDecoded
        let startReplicationTaskTypeDecoded = try containerValues.decodeIfPresent(StartReplicationTaskTypeValue.self, forKey: .startReplicationTaskType)
        startReplicationTaskType = startReplicationTaskTypeDecoded
        let cdcStartTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .cdcStartTime)
        cdcStartTime = cdcStartTimeDecoded
        let cdcStartPositionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cdcStartPosition)
        cdcStartPosition = cdcStartPositionDecoded
        let cdcStopPositionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cdcStopPosition)
        cdcStopPosition = cdcStopPositionDecoded
    }
}