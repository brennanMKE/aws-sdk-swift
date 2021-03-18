// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AdminCreateUserInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case clientMetadata = "ClientMetadata"
        case desiredDeliveryMediums = "DesiredDeliveryMediums"
        case forceAliasCreation = "ForceAliasCreation"
        case messageAction = "MessageAction"
        case temporaryPassword = "TemporaryPassword"
        case userAttributes = "UserAttributes"
        case userPoolId = "UserPoolId"
        case username = "Username"
        case validationData = "ValidationData"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let clientMetadata = clientMetadata {
            var clientMetadataContainer = container.nestedContainer(keyedBy: Key.self, forKey: .clientMetadata)
            for (dictKey0, clientmetadatatype0) in clientMetadata {
                try clientMetadataContainer.encode(clientmetadatatype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let desiredDeliveryMediums = desiredDeliveryMediums {
            var desiredDeliveryMediumsContainer = container.nestedUnkeyedContainer(forKey: .desiredDeliveryMediums)
            for deliverymediumlisttype0 in desiredDeliveryMediums {
                try desiredDeliveryMediumsContainer.encode(deliverymediumlisttype0.rawValue)
            }
        }
        if forceAliasCreation != false {
            try container.encode(forceAliasCreation, forKey: .forceAliasCreation)
        }
        if let messageAction = messageAction {
            try container.encode(messageAction.rawValue, forKey: .messageAction)
        }
        if let temporaryPassword = temporaryPassword {
            try container.encode(temporaryPassword, forKey: .temporaryPassword)
        }
        if let userAttributes = userAttributes {
            var userAttributesContainer = container.nestedUnkeyedContainer(forKey: .userAttributes)
            for attributelisttype0 in userAttributes {
                try userAttributesContainer.encode(attributelisttype0)
            }
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
        if let username = username {
            try container.encode(username, forKey: .username)
        }
        if let validationData = validationData {
            var validationDataContainer = container.nestedUnkeyedContainer(forKey: .validationData)
            for attributelisttype0 in validationData {
                try validationDataContainer.encode(attributelisttype0)
            }
        }
    }
}
