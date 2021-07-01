// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeCreateAccountStatusOutputResponseBody: Equatable {
    public let createAccountStatus: CreateAccountStatus?
}

extension DescribeCreateAccountStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case createAccountStatus = "CreateAccountStatus"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let createAccountStatusDecoded = try containerValues.decodeIfPresent(CreateAccountStatus.self, forKey: .createAccountStatus)
        createAccountStatus = createAccountStatusDecoded
    }
}