// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RemoveBackendConfigOutputResponseBody: Equatable {
    public let error: String?
}

extension RemoveBackendConfigOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case error = "error"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .error)
        error = errorDecoded
    }
}