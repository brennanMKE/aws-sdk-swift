// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetIdentityPoolRolesInputBody: Equatable {
    public let identityPoolId: String?
}

extension GetIdentityPoolRolesInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case identityPoolId = "IdentityPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityPoolId)
        identityPoolId = identityPoolIdDecoded
    }
}
