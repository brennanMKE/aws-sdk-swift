// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PortRange: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case from = "from"
        case to = "to"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if from != 0 {
            try container.encode(from, forKey: Key("From"))
        }
        if to != 0 {
            try container.encode(to, forKey: Key("To"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fromDecoded = try containerValues.decode(Int.self, forKey: .from)
        from = fromDecoded
        let toDecoded = try containerValues.decode(Int.self, forKey: .to)
        to = toDecoded
    }
}