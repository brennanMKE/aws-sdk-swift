// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension TracingConfigResponse: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case mode = "Mode"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let mode = mode {
            try container.encode(mode.rawValue, forKey: .mode)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modeDecoded = try containerValues.decodeIfPresent(TracingMode.self, forKey: .mode)
        mode = modeDecoded
    }
}