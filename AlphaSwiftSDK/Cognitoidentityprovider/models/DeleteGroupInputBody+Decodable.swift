// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct DeleteGroupInputBody: Equatable {
    public let groupName: String?
    public let userPoolId: String?
}

extension DeleteGroupInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case groupName = "GroupName"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
    }
}
