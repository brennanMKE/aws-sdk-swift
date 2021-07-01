// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchPutAssetPropertyError: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case errorCode
        case errorMessage
        case timestamps
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let errorCode = errorCode {
            try encodeContainer.encode(errorCode.rawValue, forKey: .errorCode)
        }
        if let errorMessage = errorMessage {
            try encodeContainer.encode(errorMessage, forKey: .errorMessage)
        }
        if let timestamps = timestamps {
            var timestampsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .timestamps)
            for timestamps0 in timestamps {
                try timestampsContainer.encode(timestamps0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorCodeDecoded = try containerValues.decodeIfPresent(BatchPutAssetPropertyValueErrorCode.self, forKey: .errorCode)
        errorCode = errorCodeDecoded
        let errorMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .errorMessage)
        errorMessage = errorMessageDecoded
        let timestampsContainer = try containerValues.decodeIfPresent([TimeInNanos?].self, forKey: .timestamps)
        var timestampsDecoded0:[TimeInNanos]? = nil
        if let timestampsContainer = timestampsContainer {
            timestampsDecoded0 = [TimeInNanos]()
            for structure0 in timestampsContainer {
                if let structure0 = structure0 {
                    timestampsDecoded0?.append(structure0)
                }
            }
        }
        timestamps = timestampsDecoded0
    }
}