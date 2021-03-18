// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension IdentityPoolShortDescription: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case identityPoolId = "IdentityPoolId"
        case identityPoolName = "IdentityPoolName"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let identityPoolId = identityPoolId {
            try container.encode(identityPoolId, forKey: .identityPoolId)
        }
        if let identityPoolName = identityPoolName {
            try container.encode(identityPoolName, forKey: .identityPoolName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityPoolId)
        identityPoolId = identityPoolIdDecoded
        let identityPoolNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityPoolName)
        identityPoolName = identityPoolNameDecoded
    }
}