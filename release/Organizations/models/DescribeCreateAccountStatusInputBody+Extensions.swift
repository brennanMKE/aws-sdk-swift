// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeCreateAccountStatusInputBody: Equatable {
    public let createAccountRequestId: String?
}

extension DescribeCreateAccountStatusInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case createAccountRequestId = "CreateAccountRequestId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let createAccountRequestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createAccountRequestId)
        createAccountRequestId = createAccountRequestIdDecoded
    }
}