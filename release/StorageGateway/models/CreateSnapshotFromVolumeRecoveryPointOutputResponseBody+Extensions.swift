// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateSnapshotFromVolumeRecoveryPointOutputResponseBody: Equatable {
    public let snapshotId: String?
    public let volumeARN: String?
    public let volumeRecoveryPointTime: String?
}

extension CreateSnapshotFromVolumeRecoveryPointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case snapshotId = "SnapshotId"
        case volumeARN = "VolumeARN"
        case volumeRecoveryPointTime = "VolumeRecoveryPointTime"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let snapshotIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snapshotId)
        snapshotId = snapshotIdDecoded
        let volumeARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .volumeARN)
        volumeARN = volumeARNDecoded
        let volumeRecoveryPointTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .volumeRecoveryPointTime)
        volumeRecoveryPointTime = volumeRecoveryPointTimeDecoded
    }
}