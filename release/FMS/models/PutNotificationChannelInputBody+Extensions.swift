// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutNotificationChannelInputBody: Equatable {
    public let snsTopicArn: String?
    public let snsRoleName: String?
}

extension PutNotificationChannelInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case snsRoleName = "SnsRoleName"
        case snsTopicArn = "SnsTopicArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let snsTopicArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snsTopicArn)
        snsTopicArn = snsTopicArnDecoded
        let snsRoleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snsRoleName)
        snsRoleName = snsRoleNameDecoded
    }
}