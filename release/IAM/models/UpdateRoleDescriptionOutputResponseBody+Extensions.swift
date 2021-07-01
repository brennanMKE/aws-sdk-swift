// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateRoleDescriptionOutputResponseBody: Equatable {
    public let role: Role?
}

extension UpdateRoleDescriptionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case role = "Role"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("UpdateRoleDescriptionResult"))
        let roleDecoded = try containerValues.decodeIfPresent(Role.self, forKey: .role)
        role = roleDecoded
    }
}