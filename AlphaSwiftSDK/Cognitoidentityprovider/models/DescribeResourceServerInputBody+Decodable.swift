// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct DescribeResourceServerInputBody: Equatable {
    public let userPoolId: String?
    public let identifier: String?
}

extension DescribeResourceServerInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case identifier = "Identifier"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let identifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identifier)
        identifier = identifierDecoded
    }
}
