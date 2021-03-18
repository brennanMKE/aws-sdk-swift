// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct DescribeBackupOutputBody: Equatable {
    public let backupDescription: BackupDescription?
}

extension DescribeBackupOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case backupDescription = "BackupDescription"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let backupDescriptionDecoded = try containerValues.decodeIfPresent(BackupDescription.self, forKey: .backupDescription)
        backupDescription = backupDescriptionDecoded
    }
}
