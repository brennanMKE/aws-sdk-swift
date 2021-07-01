// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InstanceCount: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceCount = "instanceCount"
        case state = "state"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if instanceCount != 0 {
            try container.encode(instanceCount, forKey: Key("InstanceCount"))
        }
        if let state = state {
            try container.encode(state, forKey: Key("State"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceCountDecoded = try containerValues.decode(Int.self, forKey: .instanceCount)
        instanceCount = instanceCountDecoded
        let stateDecoded = try containerValues.decodeIfPresent(ListingState.self, forKey: .state)
        state = stateDecoded
    }
}