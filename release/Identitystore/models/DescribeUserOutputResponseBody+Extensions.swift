// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeUserOutputResponseBody: Equatable {
    public let userName: String?
    public let userId: String?
}

extension DescribeUserOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case userId = "UserId"
        case userName = "UserName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userName)
        userName = userNameDecoded
        let userIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userId)
        userId = userIdDecoded
    }
}