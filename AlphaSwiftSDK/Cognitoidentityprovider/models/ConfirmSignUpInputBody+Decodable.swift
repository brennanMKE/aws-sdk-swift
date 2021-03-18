// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ConfirmSignUpInputBody: Equatable {
    public let clientId: String?
    public let secretHash: String?
    public let username: String?
    public let confirmationCode: String?
    public let forceAliasCreation: Bool
    public let analyticsMetadata: AnalyticsMetadataType?
    public let userContextData: UserContextDataType?
    public let clientMetadata: [String:String]?
}

extension ConfirmSignUpInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case analyticsMetadata = "AnalyticsMetadata"
        case clientId = "ClientId"
        case clientMetadata = "ClientMetadata"
        case confirmationCode = "ConfirmationCode"
        case forceAliasCreation = "ForceAliasCreation"
        case secretHash = "SecretHash"
        case userContextData = "UserContextData"
        case username = "Username"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientId)
        clientId = clientIdDecoded
        let secretHashDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretHash)
        secretHash = secretHashDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let confirmationCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .confirmationCode)
        confirmationCode = confirmationCodeDecoded
        let forceAliasCreationDecoded = try containerValues.decode(Bool.self, forKey: .forceAliasCreation)
        forceAliasCreation = forceAliasCreationDecoded
        let analyticsMetadataDecoded = try containerValues.decodeIfPresent(AnalyticsMetadataType.self, forKey: .analyticsMetadata)
        analyticsMetadata = analyticsMetadataDecoded
        let userContextDataDecoded = try containerValues.decodeIfPresent(UserContextDataType.self, forKey: .userContextData)
        userContextData = userContextDataDecoded
        let clientMetadataContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .clientMetadata)
        var clientMetadataDecoded0: [String:String]? = nil
        if let clientMetadataContainer = clientMetadataContainer {
            clientMetadataDecoded0 = [String:String]()
            for (key0, stringtype0) in clientMetadataContainer {
                clientMetadataDecoded0?[key0] = stringtype0
            }
        }
        clientMetadata = clientMetadataDecoded0
    }
}
