// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CookiePreference: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case forward = "Forward"
        case whitelistedNames = "WhitelistedNames"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let forward = forward {
            try container.encode(forward, forKey: Key("forward"))
        }
        if let whitelistedNames = whitelistedNames {
            try container.encode(whitelistedNames, forKey: Key("whitelistedNames"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let forwardDecoded = try containerValues.decodeIfPresent(ItemSelection.self, forKey: .forward)
        forward = forwardDecoded
        let whitelistedNamesDecoded = try containerValues.decodeIfPresent(CookieNames.self, forKey: .whitelistedNames)
        whitelistedNames = whitelistedNamesDecoded
    }
}