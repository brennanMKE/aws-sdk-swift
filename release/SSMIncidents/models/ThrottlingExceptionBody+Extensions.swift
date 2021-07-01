// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ThrottlingExceptionBody: Equatable {
    public let message: String?
    public let serviceCode: ServiceCode?
    public let quotaCode: String?
}

extension ThrottlingExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message
        case quotaCode
        case serviceCode
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let serviceCodeDecoded = try containerValues.decodeIfPresent(ServiceCode.self, forKey: .serviceCode)
        serviceCode = serviceCodeDecoded
        let quotaCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .quotaCode)
        quotaCode = quotaCodeDecoded
    }
}