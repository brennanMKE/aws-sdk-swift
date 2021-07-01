// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteBackupOutputResponseBody: Equatable {
    public let backup: Backup?
}

extension DeleteBackupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case backup = "Backup"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let backupDecoded = try containerValues.decodeIfPresent(Backup.self, forKey: .backup)
        backup = backupDecoded
    }
}