// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConnectionAliasAssociation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case associatedAccountId = "AssociatedAccountId"
        case associationStatus = "AssociationStatus"
        case connectionIdentifier = "ConnectionIdentifier"
        case resourceId = "ResourceId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let associatedAccountId = associatedAccountId {
            try encodeContainer.encode(associatedAccountId, forKey: .associatedAccountId)
        }
        if let associationStatus = associationStatus {
            try encodeContainer.encode(associationStatus.rawValue, forKey: .associationStatus)
        }
        if let connectionIdentifier = connectionIdentifier {
            try encodeContainer.encode(connectionIdentifier, forKey: .connectionIdentifier)
        }
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let associationStatusDecoded = try containerValues.decodeIfPresent(AssociationStatus.self, forKey: .associationStatus)
        associationStatus = associationStatusDecoded
        let associatedAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .associatedAccountId)
        associatedAccountId = associatedAccountIdDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let connectionIdentifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .connectionIdentifier)
        connectionIdentifier = connectionIdentifierDecoded
    }
}