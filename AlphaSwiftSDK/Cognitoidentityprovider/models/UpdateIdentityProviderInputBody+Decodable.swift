// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateIdentityProviderInputBody: Equatable {
    public let userPoolId: String?
    public let providerName: String?
    public let providerDetails: [String:String]?
    public let attributeMapping: [String:String]?
    public let idpIdentifiers: [String]?
}

extension UpdateIdentityProviderInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case attributeMapping = "AttributeMapping"
        case idpIdentifiers = "IdpIdentifiers"
        case providerDetails = "ProviderDetails"
        case providerName = "ProviderName"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let providerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .providerName)
        providerName = providerNameDecoded
        let providerDetailsContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .providerDetails)
        var providerDetailsDecoded0: [String:String]? = nil
        if let providerDetailsContainer = providerDetailsContainer {
            providerDetailsDecoded0 = [String:String]()
            for (key0, stringtype0) in providerDetailsContainer {
                providerDetailsDecoded0?[key0] = stringtype0
            }
        }
        providerDetails = providerDetailsDecoded0
        let attributeMappingContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .attributeMapping)
        var attributeMappingDecoded0: [String:String]? = nil
        if let attributeMappingContainer = attributeMappingContainer {
            attributeMappingDecoded0 = [String:String]()
            for (key0, stringtype0) in attributeMappingContainer {
                attributeMappingDecoded0?[key0] = stringtype0
            }
        }
        attributeMapping = attributeMappingDecoded0
        let idpIdentifiersContainer = try containerValues.decodeIfPresent([String].self, forKey: .idpIdentifiers)
        var idpIdentifiersDecoded0:[String]? = nil
        if let idpIdentifiersContainer = idpIdentifiersContainer {
            idpIdentifiersDecoded0 = [String]()
            for string0 in idpIdentifiersContainer {
                idpIdentifiersDecoded0?.append(string0)
            }
        }
        idpIdentifiers = idpIdentifiersDecoded0
    }
}
