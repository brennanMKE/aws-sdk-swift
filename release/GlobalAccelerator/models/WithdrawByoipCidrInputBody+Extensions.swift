// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct WithdrawByoipCidrInputBody: Equatable {
    public let cidr: String?
}

extension WithdrawByoipCidrInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cidrDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cidr)
        cidr = cidrDecoded
    }
}