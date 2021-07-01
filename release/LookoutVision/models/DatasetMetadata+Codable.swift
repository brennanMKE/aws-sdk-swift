// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DatasetMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTimestamp = "CreationTimestamp"
        case datasetType = "DatasetType"
        case status = "Status"
        case statusMessage = "StatusMessage"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationTimestamp = creationTimestamp {
            try encodeContainer.encode(creationTimestamp.timeIntervalSince1970, forKey: .creationTimestamp)
        }
        if let datasetType = datasetType {
            try encodeContainer.encode(datasetType, forKey: .datasetType)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let statusMessage = statusMessage {
            try encodeContainer.encode(statusMessage, forKey: .statusMessage)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetType)
        datasetType = datasetTypeDecoded
        let creationTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTimestamp)
        creationTimestamp = creationTimestampDecoded
        let statusDecoded = try containerValues.decodeIfPresent(DatasetStatus.self, forKey: .status)
        status = statusDecoded
        let statusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusMessage)
        statusMessage = statusMessageDecoded
    }
}