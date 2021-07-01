// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TrackSourceSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case trackNumber = "trackNumber"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if trackNumber != 0 {
            try encodeContainer.encode(trackNumber, forKey: .trackNumber)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trackNumberDecoded = try containerValues.decode(Int.self, forKey: .trackNumber)
        trackNumber = trackNumberDecoded
    }
}