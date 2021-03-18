// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension TableAutoScalingDescription: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case replicas = "Replicas"
        case tableName = "TableName"
        case tableStatus = "TableStatus"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let replicas = replicas {
            var replicasContainer = container.nestedUnkeyedContainer(forKey: .replicas)
            for replicaautoscalingdescriptionlist0 in replicas {
                try replicasContainer.encode(replicaautoscalingdescriptionlist0)
            }
        }
        if let tableName = tableName {
            try container.encode(tableName, forKey: .tableName)
        }
        if let tableStatus = tableStatus {
            try container.encode(tableStatus.rawValue, forKey: .tableStatus)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
        let tableStatusDecoded = try containerValues.decodeIfPresent(TableStatus.self, forKey: .tableStatus)
        tableStatus = tableStatusDecoded
        let replicasContainer = try containerValues.decodeIfPresent([ReplicaAutoScalingDescription].self, forKey: .replicas)
        var replicasDecoded0:[ReplicaAutoScalingDescription]? = nil
        if let replicasContainer = replicasContainer {
            replicasDecoded0 = [ReplicaAutoScalingDescription]()
            for structure0 in replicasContainer {
                replicasDecoded0?.append(structure0)
            }
        }
        replicas = replicasDecoded0
    }
}
