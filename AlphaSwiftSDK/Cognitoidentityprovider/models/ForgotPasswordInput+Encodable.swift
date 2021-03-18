// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ForgotPasswordInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case analyticsMetadata = "AnalyticsMetadata"
        case clientId = "ClientId"
        case clientMetadata = "ClientMetadata"
        case secretHash = "SecretHash"
        case userContextData = "UserContextData"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let analyticsMetadata = analyticsMetadata {
            try container.encode(analyticsMetadata, forKey: .analyticsMetadata)
        }
        if let clientId = clientId {
            try container.encode(clientId, forKey: .clientId)
        }
        if let clientMetadata = clientMetadata {
            var clientMetadataContainer = container.nestedContainer(keyedBy: Key.self, forKey: .clientMetadata)
            for (dictKey0, clientmetadatatype0) in clientMetadata {
                try clientMetadataContainer.encode(clientmetadatatype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let secretHash = secretHash {
            try container.encode(secretHash, forKey: .secretHash)
        }
        if let userContextData = userContextData {
            try container.encode(userContextData, forKey: .userContextData)
        }
        if let username = username {
            try container.encode(username, forKey: .username)
        }
    }
}
