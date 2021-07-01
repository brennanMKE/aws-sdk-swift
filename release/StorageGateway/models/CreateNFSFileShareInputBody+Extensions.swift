// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateNFSFileShareInputBody: Equatable {
    public let clientToken: String?
    public let nFSFileShareDefaults: NFSFileShareDefaults?
    public let gatewayARN: String?
    public let kMSEncrypted: Bool?
    public let kMSKey: String?
    public let role: String?
    public let locationARN: String?
    public let defaultStorageClass: String?
    public let objectACL: ObjectACL?
    public let clientList: [String]?
    public let squash: String?
    public let readOnly: Bool?
    public let guessMIMETypeEnabled: Bool?
    public let requesterPays: Bool?
    public let tags: [Tag]?
    public let fileShareName: String?
    public let cacheAttributes: CacheAttributes?
    public let notificationPolicy: String?
}

extension CreateNFSFileShareInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cacheAttributes = "CacheAttributes"
        case clientList = "ClientList"
        case clientToken = "ClientToken"
        case defaultStorageClass = "DefaultStorageClass"
        case fileShareName = "FileShareName"
        case gatewayARN = "GatewayARN"
        case guessMIMETypeEnabled = "GuessMIMETypeEnabled"
        case kMSEncrypted = "KMSEncrypted"
        case kMSKey = "KMSKey"
        case locationARN = "LocationARN"
        case nFSFileShareDefaults = "NFSFileShareDefaults"
        case notificationPolicy = "NotificationPolicy"
        case objectACL = "ObjectACL"
        case readOnly = "ReadOnly"
        case requesterPays = "RequesterPays"
        case role = "Role"
        case squash = "Squash"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let nFSFileShareDefaultsDecoded = try containerValues.decodeIfPresent(NFSFileShareDefaults.self, forKey: .nFSFileShareDefaults)
        nFSFileShareDefaults = nFSFileShareDefaultsDecoded
        let gatewayARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayARN)
        gatewayARN = gatewayARNDecoded
        let kMSEncryptedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .kMSEncrypted)
        kMSEncrypted = kMSEncryptedDecoded
        let kMSKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kMSKey)
        kMSKey = kMSKeyDecoded
        let roleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .role)
        role = roleDecoded
        let locationARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .locationARN)
        locationARN = locationARNDecoded
        let defaultStorageClassDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultStorageClass)
        defaultStorageClass = defaultStorageClassDecoded
        let objectACLDecoded = try containerValues.decodeIfPresent(ObjectACL.self, forKey: .objectACL)
        objectACL = objectACLDecoded
        let clientListContainer = try containerValues.decodeIfPresent([String?].self, forKey: .clientList)
        var clientListDecoded0:[String]? = nil
        if let clientListContainer = clientListContainer {
            clientListDecoded0 = [String]()
            for string0 in clientListContainer {
                if let string0 = string0 {
                    clientListDecoded0?.append(string0)
                }
            }
        }
        clientList = clientListDecoded0
        let squashDecoded = try containerValues.decodeIfPresent(String.self, forKey: .squash)
        squash = squashDecoded
        let readOnlyDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .readOnly)
        readOnly = readOnlyDecoded
        let guessMIMETypeEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .guessMIMETypeEnabled)
        guessMIMETypeEnabled = guessMIMETypeEnabledDecoded
        let requesterPaysDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .requesterPays)
        requesterPays = requesterPaysDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let fileShareNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fileShareName)
        fileShareName = fileShareNameDecoded
        let cacheAttributesDecoded = try containerValues.decodeIfPresent(CacheAttributes.self, forKey: .cacheAttributes)
        cacheAttributes = cacheAttributesDecoded
        let notificationPolicyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .notificationPolicy)
        notificationPolicy = notificationPolicyDecoded
    }
}