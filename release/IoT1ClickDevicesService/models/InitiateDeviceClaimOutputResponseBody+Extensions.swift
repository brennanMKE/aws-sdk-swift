// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InitiateDeviceClaimOutputResponseBody: Equatable {
    public let state: String?
}

extension InitiateDeviceClaimOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case state = "state"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .state)
        state = stateDecoded
    }
}