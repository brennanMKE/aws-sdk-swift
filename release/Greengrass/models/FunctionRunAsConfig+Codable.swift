// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FunctionRunAsConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case gid = "Gid"
        case uid = "Uid"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if gid != 0 {
            try encodeContainer.encode(gid, forKey: .gid)
        }
        if uid != 0 {
            try encodeContainer.encode(uid, forKey: .uid)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gidDecoded = try containerValues.decode(Int.self, forKey: .gid)
        gid = gidDecoded
        let uidDecoded = try containerValues.decode(Int.self, forKey: .uid)
        uid = uidDecoded
    }
}