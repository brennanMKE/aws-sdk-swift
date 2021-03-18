// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ListIdentitiesInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case hideDisabled = "HideDisabled"
        case identityPoolId = "IdentityPoolId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if hideDisabled != false {
            try container.encode(hideDisabled, forKey: .hideDisabled)
        }
        if let identityPoolId = identityPoolId {
            try container.encode(identityPoolId, forKey: .identityPoolId)
        }
        if maxResults != 0 {
            try container.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try container.encode(nextToken, forKey: .nextToken)
        }
    }
}
