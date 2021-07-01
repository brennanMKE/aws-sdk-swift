// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchArrayProperties: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case size = "Size"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if size != 0 {
            try encodeContainer.encode(size, forKey: .size)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sizeDecoded = try containerValues.decode(Int.self, forKey: .size)
        size = sizeDecoded
    }
}