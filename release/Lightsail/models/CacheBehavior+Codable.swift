// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CacheBehavior: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case behavior
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let behavior = behavior {
            try encodeContainer.encode(behavior.rawValue, forKey: .behavior)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let behaviorDecoded = try containerValues.decodeIfPresent(BehaviorEnum.self, forKey: .behavior)
        behavior = behaviorDecoded
    }
}