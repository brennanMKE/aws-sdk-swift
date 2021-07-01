// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StopTimecode: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lastFrameClippingBehavior = "lastFrameClippingBehavior"
        case timecode = "timecode"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let lastFrameClippingBehavior = lastFrameClippingBehavior {
            try encodeContainer.encode(lastFrameClippingBehavior.rawValue, forKey: .lastFrameClippingBehavior)
        }
        if let timecode = timecode {
            try encodeContainer.encode(timecode, forKey: .timecode)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lastFrameClippingBehaviorDecoded = try containerValues.decodeIfPresent(LastFrameClippingBehavior.self, forKey: .lastFrameClippingBehavior)
        lastFrameClippingBehavior = lastFrameClippingBehaviorDecoded
        let timecodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .timecode)
        timecode = timecodeDecoded
    }
}