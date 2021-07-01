// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateSnapshotCopyGrantOutputResponseBody: Equatable {
    public let snapshotCopyGrant: SnapshotCopyGrant?
}

extension CreateSnapshotCopyGrantOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case snapshotCopyGrant = "SnapshotCopyGrant"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("CreateSnapshotCopyGrantResult"))
        let snapshotCopyGrantDecoded = try containerValues.decodeIfPresent(SnapshotCopyGrant.self, forKey: .snapshotCopyGrant)
        snapshotCopyGrant = snapshotCopyGrantDecoded
    }
}