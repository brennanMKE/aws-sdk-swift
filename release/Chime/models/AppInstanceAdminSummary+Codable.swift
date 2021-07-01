// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AppInstanceAdminSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case admin = "Admin"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let admin = admin {
            try encodeContainer.encode(admin, forKey: .admin)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let adminDecoded = try containerValues.decodeIfPresent(Identity.self, forKey: .admin)
        admin = adminDecoded
    }
}