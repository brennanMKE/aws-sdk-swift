// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UserPoolPolicyType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case passwordPolicy = "PasswordPolicy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let passwordPolicy = passwordPolicy {
            try encodeContainer.encode(passwordPolicy, forKey: .passwordPolicy)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let passwordPolicyDecoded = try containerValues.decodeIfPresent(PasswordPolicyType.self, forKey: .passwordPolicy)
        passwordPolicy = passwordPolicyDecoded
    }
}