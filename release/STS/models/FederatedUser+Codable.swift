// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FederatedUser: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case federatedUserId = "FederatedUserId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let arn = arn {
            try container.encode(arn, forKey: Key("Arn"))
        }
        if let federatedUserId = federatedUserId {
            try container.encode(federatedUserId, forKey: Key("FederatedUserId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let federatedUserIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .federatedUserId)
        federatedUserId = federatedUserIdDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
    }
}