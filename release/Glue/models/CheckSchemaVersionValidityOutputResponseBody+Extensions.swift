// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CheckSchemaVersionValidityOutputResponseBody: Equatable {
    public let valid: Bool
    public let error: String?
}

extension CheckSchemaVersionValidityOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case error = "Error"
        case valid = "Valid"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let validDecoded = try containerValues.decode(Bool.self, forKey: .valid)
        valid = validDecoded
        let errorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .error)
        error = errorDecoded
    }
}