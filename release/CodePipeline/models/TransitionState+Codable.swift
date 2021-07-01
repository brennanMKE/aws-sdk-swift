// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TransitionState: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case disabledReason
        case enabled
        case lastChangedAt
        case lastChangedBy
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let disabledReason = disabledReason {
            try encodeContainer.encode(disabledReason, forKey: .disabledReason)
        }
        if enabled != false {
            try encodeContainer.encode(enabled, forKey: .enabled)
        }
        if let lastChangedAt = lastChangedAt {
            try encodeContainer.encode(lastChangedAt.timeIntervalSince1970, forKey: .lastChangedAt)
        }
        if let lastChangedBy = lastChangedBy {
            try encodeContainer.encode(lastChangedBy, forKey: .lastChangedBy)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enabledDecoded = try containerValues.decode(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let lastChangedByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastChangedBy)
        lastChangedBy = lastChangedByDecoded
        let lastChangedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastChangedAt)
        lastChangedAt = lastChangedAtDecoded
        let disabledReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .disabledReason)
        disabledReason = disabledReasonDecoded
    }
}