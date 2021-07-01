// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SalesforceConnectorProfileProperties: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceUrl
        case isSandboxEnvironment
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceUrl = instanceUrl {
            try encodeContainer.encode(instanceUrl, forKey: .instanceUrl)
        }
        if isSandboxEnvironment != false {
            try encodeContainer.encode(isSandboxEnvironment, forKey: .isSandboxEnvironment)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceUrl)
        instanceUrl = instanceUrlDecoded
        let isSandboxEnvironmentDecoded = try containerValues.decode(Bool.self, forKey: .isSandboxEnvironment)
        isSandboxEnvironment = isSandboxEnvironmentDecoded
    }
}