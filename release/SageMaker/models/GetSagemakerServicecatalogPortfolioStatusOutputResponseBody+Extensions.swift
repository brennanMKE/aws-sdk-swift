// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetSagemakerServicecatalogPortfolioStatusOutputResponseBody: Equatable {
    public let status: SagemakerServicecatalogStatus?
}

extension GetSagemakerServicecatalogPortfolioStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(SagemakerServicecatalogStatus.self, forKey: .status)
        status = statusDecoded
    }
}