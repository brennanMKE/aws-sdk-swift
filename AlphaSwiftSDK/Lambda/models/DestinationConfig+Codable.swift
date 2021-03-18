// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DestinationConfig: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case onFailure = "OnFailure"
        case onSuccess = "OnSuccess"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let onFailure = onFailure {
            try container.encode(onFailure, forKey: .onFailure)
        }
        if let onSuccess = onSuccess {
            try container.encode(onSuccess, forKey: .onSuccess)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let onSuccessDecoded = try containerValues.decodeIfPresent(OnSuccess.self, forKey: .onSuccess)
        onSuccess = onSuccessDecoded
        let onFailureDecoded = try containerValues.decodeIfPresent(OnFailure.self, forKey: .onFailure)
        onFailure = onFailureDecoded
    }
}
