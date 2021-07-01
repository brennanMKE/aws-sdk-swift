// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IcmpTypeCode: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case type = "type"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if code != 0 {
            try container.encode(code, forKey: Key("Code"))
        }
        if type != 0 {
            try container.encode(type, forKey: Key("Type"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeDecoded = try containerValues.decode(Int.self, forKey: .code)
        code = codeDecoded
        let typeDecoded = try containerValues.decode(Int.self, forKey: .type)
        type = typeDecoded
    }
}