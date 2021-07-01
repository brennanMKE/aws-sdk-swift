// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LoadBalancerTlsCertificateDomainValidationRecord: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domainName
        case name
        case type
        case validationStatus
        case value
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domainName = domainName {
            try encodeContainer.encode(domainName, forKey: .domainName)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let type = type {
            try encodeContainer.encode(type, forKey: .type)
        }
        if let validationStatus = validationStatus {
            try encodeContainer.encode(validationStatus.rawValue, forKey: .validationStatus)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let valueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .value)
        value = valueDecoded
        let validationStatusDecoded = try containerValues.decodeIfPresent(LoadBalancerTlsCertificateDomainStatus.self, forKey: .validationStatus)
        validationStatus = validationStatusDecoded
        let domainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainName)
        domainName = domainNameDecoded
    }
}