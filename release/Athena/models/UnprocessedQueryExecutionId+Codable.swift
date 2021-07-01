// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UnprocessedQueryExecutionId: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case errorCode = "ErrorCode"
        case errorMessage = "ErrorMessage"
        case queryExecutionId = "QueryExecutionId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let errorCode = errorCode {
            try encodeContainer.encode(errorCode, forKey: .errorCode)
        }
        if let errorMessage = errorMessage {
            try encodeContainer.encode(errorMessage, forKey: .errorMessage)
        }
        if let queryExecutionId = queryExecutionId {
            try encodeContainer.encode(queryExecutionId, forKey: .queryExecutionId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queryExecutionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryExecutionId)
        queryExecutionId = queryExecutionIdDecoded
        let errorCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .errorCode)
        errorCode = errorCodeDecoded
        let errorMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .errorMessage)
        errorMessage = errorMessageDecoded
    }
}