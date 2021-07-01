// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsElasticsearchDomainDomainEndpointOptions: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case enforceHTTPS = "EnforceHTTPS"
        case tLSSecurityPolicy = "TLSSecurityPolicy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if enforceHTTPS != false {
            try encodeContainer.encode(enforceHTTPS, forKey: .enforceHTTPS)
        }
        if let tLSSecurityPolicy = tLSSecurityPolicy {
            try encodeContainer.encode(tLSSecurityPolicy, forKey: .tLSSecurityPolicy)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enforceHTTPSDecoded = try containerValues.decode(Bool.self, forKey: .enforceHTTPS)
        enforceHTTPS = enforceHTTPSDecoded
        let tLSSecurityPolicyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tLSSecurityPolicy)
        tLSSecurityPolicy = tLSSecurityPolicyDecoded
    }
}