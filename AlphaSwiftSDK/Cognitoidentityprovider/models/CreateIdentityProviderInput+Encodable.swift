// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension CreateIdentityProviderInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case attributeMapping = "AttributeMapping"
        case idpIdentifiers = "IdpIdentifiers"
        case providerDetails = "ProviderDetails"
        case providerName = "ProviderName"
        case providerType = "ProviderType"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let attributeMapping = attributeMapping {
            var attributeMappingContainer = container.nestedContainer(keyedBy: Key.self, forKey: .attributeMapping)
            for (dictKey0, attributemappingtype0) in attributeMapping {
                try attributeMappingContainer.encode(attributemappingtype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let idpIdentifiers = idpIdentifiers {
            var idpIdentifiersContainer = container.nestedUnkeyedContainer(forKey: .idpIdentifiers)
            for idpidentifierslisttype0 in idpIdentifiers {
                try idpIdentifiersContainer.encode(idpidentifierslisttype0)
            }
        }
        if let providerDetails = providerDetails {
            var providerDetailsContainer = container.nestedContainer(keyedBy: Key.self, forKey: .providerDetails)
            for (dictKey0, providerdetailstype0) in providerDetails {
                try providerDetailsContainer.encode(providerdetailstype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let providerName = providerName {
            try container.encode(providerName, forKey: .providerName)
        }
        if let providerType = providerType {
            try container.encode(providerType.rawValue, forKey: .providerType)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
    }
}
