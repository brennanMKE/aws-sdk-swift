// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct CreateGlobalTableInputBody: Equatable {
    public let globalTableName: String?
    public let replicationGroup: [Replica]?
}

extension CreateGlobalTableInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
        case replicationGroup = "ReplicationGroup"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let globalTableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .globalTableName)
        globalTableName = globalTableNameDecoded
        let replicationGroupContainer = try containerValues.decodeIfPresent([Replica].self, forKey: .replicationGroup)
        var replicationGroupDecoded0:[Replica]? = nil
        if let replicationGroupContainer = replicationGroupContainer {
            replicationGroupDecoded0 = [Replica]()
            for structure0 in replicationGroupContainer {
                replicationGroupDecoded0?.append(structure0)
            }
        }
        replicationGroup = replicationGroupDecoded0
    }
}