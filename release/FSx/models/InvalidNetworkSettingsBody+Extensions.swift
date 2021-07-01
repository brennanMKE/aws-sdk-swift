// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InvalidNetworkSettingsBody: Equatable {
    public let message: String?
    public let invalidSubnetId: String?
    public let invalidSecurityGroupId: String?
}

extension InvalidNetworkSettingsBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case invalidSecurityGroupId = "InvalidSecurityGroupId"
        case invalidSubnetId = "InvalidSubnetId"
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let invalidSubnetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .invalidSubnetId)
        invalidSubnetId = invalidSubnetIdDecoded
        let invalidSecurityGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .invalidSecurityGroupId)
        invalidSecurityGroupId = invalidSecurityGroupIdDecoded
    }
}