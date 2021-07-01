// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RestoreDBInstanceFromDBSnapshotOutputResponseBody: Equatable {
    public let dBInstance: DBInstance?
}

extension RestoreDBInstanceFromDBSnapshotOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("RestoreDBInstanceFromDBSnapshotResult"))
        let dBInstanceDecoded = try containerValues.decodeIfPresent(DBInstance.self, forKey: .dBInstance)
        dBInstance = dBInstanceDecoded
    }
}