// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CheckDomainTransferabilityInputBody: Equatable {
    public let domainName: String?
    public let authCode: String?
}

extension CheckDomainTransferabilityInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case authCode = "AuthCode"
        case domainName = "DomainName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainName)
        domainName = domainNameDecoded
        let authCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authCode)
        authCode = authCodeDecoded
    }
}