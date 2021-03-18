// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UsernameConfigurationType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case caseSensitive = "CaseSensitive"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let caseSensitive = caseSensitive {
            try container.encode(caseSensitive, forKey: .caseSensitive)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let caseSensitiveDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .caseSensitive)
        caseSensitive = caseSensitiveDecoded
    }
}
