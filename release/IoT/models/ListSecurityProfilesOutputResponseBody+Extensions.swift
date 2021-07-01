// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSecurityProfilesOutputResponseBody: Equatable {
    public let securityProfileIdentifiers: [SecurityProfileIdentifier]?
    public let nextToken: String?
}

extension ListSecurityProfilesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case securityProfileIdentifiers
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let securityProfileIdentifiersContainer = try containerValues.decodeIfPresent([SecurityProfileIdentifier?].self, forKey: .securityProfileIdentifiers)
        var securityProfileIdentifiersDecoded0:[SecurityProfileIdentifier]? = nil
        if let securityProfileIdentifiersContainer = securityProfileIdentifiersContainer {
            securityProfileIdentifiersDecoded0 = [SecurityProfileIdentifier]()
            for structure0 in securityProfileIdentifiersContainer {
                if let structure0 = structure0 {
                    securityProfileIdentifiersDecoded0?.append(structure0)
                }
            }
        }
        securityProfileIdentifiers = securityProfileIdentifiersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}