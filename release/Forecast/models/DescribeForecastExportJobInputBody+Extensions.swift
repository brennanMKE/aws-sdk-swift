// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeForecastExportJobInputBody: Equatable {
    public let forecastExportJobArn: String?
}

extension DescribeForecastExportJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case forecastExportJobArn = "ForecastExportJobArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let forecastExportJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .forecastExportJobArn)
        forecastExportJobArn = forecastExportJobArnDecoded
    }
}