// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateChannelBanInputBody: Equatable {
    public let memberArn: String?
}

extension CreateChannelBanInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case memberArn = "MemberArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let memberArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .memberArn)
        memberArn = memberArnDecoded
    }
}