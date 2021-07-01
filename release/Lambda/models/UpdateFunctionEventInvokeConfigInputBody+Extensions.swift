// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateFunctionEventInvokeConfigInputBody: Equatable {
    public let maximumRetryAttempts: Int?
    public let maximumEventAgeInSeconds: Int?
    public let destinationConfig: DestinationConfig?
}

extension UpdateFunctionEventInvokeConfigInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case destinationConfig = "DestinationConfig"
        case maximumEventAgeInSeconds = "MaximumEventAgeInSeconds"
        case maximumRetryAttempts = "MaximumRetryAttempts"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maximumRetryAttemptsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumRetryAttempts)
        maximumRetryAttempts = maximumRetryAttemptsDecoded
        let maximumEventAgeInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumEventAgeInSeconds)
        maximumEventAgeInSeconds = maximumEventAgeInSecondsDecoded
        let destinationConfigDecoded = try containerValues.decodeIfPresent(DestinationConfig.self, forKey: .destinationConfig)
        destinationConfig = destinationConfigDecoded
    }
}