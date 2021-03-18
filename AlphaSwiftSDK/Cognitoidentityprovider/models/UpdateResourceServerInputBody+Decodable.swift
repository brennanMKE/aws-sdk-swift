// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateResourceServerInputBody: Equatable {
    public let userPoolId: String?
    public let identifier: String?
    public let name: String?
    public let scopes: [ResourceServerScopeType]?
}

extension UpdateResourceServerInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case identifier = "Identifier"
        case name = "Name"
        case scopes = "Scopes"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let identifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identifier)
        identifier = identifierDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let scopesContainer = try containerValues.decodeIfPresent([ResourceServerScopeType].self, forKey: .scopes)
        var scopesDecoded0:[ResourceServerScopeType]? = nil
        if let scopesContainer = scopesContainer {
            scopesDecoded0 = [ResourceServerScopeType]()
            for structure0 in scopesContainer {
                scopesDecoded0?.append(structure0)
            }
        }
        scopes = scopesDecoded0
    }
}
