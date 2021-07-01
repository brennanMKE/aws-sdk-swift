// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TracingConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case enabled
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if enabled != false {
            try encodeContainer.encode(enabled, forKey: .enabled)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enabledDecoded = try containerValues.decode(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
    }
}