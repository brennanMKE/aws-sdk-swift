// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RefreshSchemasStatus: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endpointArn = "EndpointArn"
        case lastFailureMessage = "LastFailureMessage"
        case lastRefreshDate = "LastRefreshDate"
        case replicationInstanceArn = "ReplicationInstanceArn"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endpointArn = endpointArn {
            try encodeContainer.encode(endpointArn, forKey: .endpointArn)
        }
        if let lastFailureMessage = lastFailureMessage {
            try encodeContainer.encode(lastFailureMessage, forKey: .lastFailureMessage)
        }
        if let lastRefreshDate = lastRefreshDate {
            try encodeContainer.encode(lastRefreshDate.timeIntervalSince1970, forKey: .lastRefreshDate)
        }
        if let replicationInstanceArn = replicationInstanceArn {
            try encodeContainer.encode(replicationInstanceArn, forKey: .replicationInstanceArn)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointArn)
        endpointArn = endpointArnDecoded
        let replicationInstanceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationInstanceArn)
        replicationInstanceArn = replicationInstanceArnDecoded
        let statusDecoded = try containerValues.decodeIfPresent(RefreshSchemasStatusTypeValue.self, forKey: .status)
        status = statusDecoded
        let lastRefreshDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastRefreshDate)
        lastRefreshDate = lastRefreshDateDecoded
        let lastFailureMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastFailureMessage)
        lastFailureMessage = lastFailureMessageDecoded
    }
}