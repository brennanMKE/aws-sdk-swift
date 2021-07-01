// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeServiceActionExecutionParametersInputBody: Equatable {
    public let provisionedProductId: String?
    public let serviceActionId: String?
    public let acceptLanguage: String?
}

extension DescribeServiceActionExecutionParametersInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case provisionedProductId = "ProvisionedProductId"
        case serviceActionId = "ServiceActionId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let provisionedProductIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisionedProductId)
        provisionedProductId = provisionedProductIdDecoded
        let serviceActionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceActionId)
        serviceActionId = serviceActionIdDecoded
        let acceptLanguageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acceptLanguage)
        acceptLanguage = acceptLanguageDecoded
    }
}