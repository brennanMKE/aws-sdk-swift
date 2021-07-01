// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SAMLProviderListEntry: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case createDate = "CreateDate"
        case validUntil = "ValidUntil"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let arn = arn {
            try container.encode(arn, forKey: Key("Arn"))
        }
        if let createDate = createDate {
            try container.encode(TimestampWrapper(createDate, format: .dateTime), forKey: Key("createDate"))
        }
        if let validUntil = validUntil {
            try container.encode(TimestampWrapper(validUntil, format: .dateTime), forKey: Key("validUntil"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let validUntilDecoded = try containerValues.decodeIfPresent(String.self, forKey: .validUntil)
        var validUntilBuffer:Date? = nil
        if let validUntilDecoded = validUntilDecoded {
            validUntilBuffer = try TimestampWrapperDecoder.parseDateStringValue(validUntilDecoded, format: .dateTime)
        }
        validUntil = validUntilBuffer
        let createDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createDate)
        var createDateBuffer:Date? = nil
        if let createDateDecoded = createDateDecoded {
            createDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(createDateDecoded, format: .dateTime)
        }
        createDate = createDateBuffer
    }
}