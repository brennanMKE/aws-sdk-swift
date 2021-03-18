// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct DescribeUserPoolInputBody: Equatable {
    public let userPoolId: String?
}

extension DescribeUserPoolInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
    }
}
