// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct AdminInitiateAuthInputBody: Equatable {
    public let userPoolId: String?
    public let clientId: String?
    public let authFlow: AuthFlowType?
    public let authParameters: [String:String]?
    public let clientMetadata: [String:String]?
    public let analyticsMetadata: AnalyticsMetadataType?
    public let contextData: ContextDataType?
}

extension AdminInitiateAuthInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case analyticsMetadata = "AnalyticsMetadata"
        case authFlow = "AuthFlow"
        case authParameters = "AuthParameters"
        case clientId = "ClientId"
        case clientMetadata = "ClientMetadata"
        case contextData = "ContextData"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let clientIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientId)
        clientId = clientIdDecoded
        let authFlowDecoded = try containerValues.decodeIfPresent(AuthFlowType.self, forKey: .authFlow)
        authFlow = authFlowDecoded
        let authParametersContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .authParameters)
        var authParametersDecoded0: [String:String]? = nil
        if let authParametersContainer = authParametersContainer {
            authParametersDecoded0 = [String:String]()
            for (key0, stringtype0) in authParametersContainer {
                authParametersDecoded0?[key0] = stringtype0
            }
        }
        authParameters = authParametersDecoded0
        let clientMetadataContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .clientMetadata)
        var clientMetadataDecoded0: [String:String]? = nil
        if let clientMetadataContainer = clientMetadataContainer {
            clientMetadataDecoded0 = [String:String]()
            for (key0, stringtype0) in clientMetadataContainer {
                clientMetadataDecoded0?[key0] = stringtype0
            }
        }
        clientMetadata = clientMetadataDecoded0
        let analyticsMetadataDecoded = try containerValues.decodeIfPresent(AnalyticsMetadataType.self, forKey: .analyticsMetadata)
        analyticsMetadata = analyticsMetadataDecoded
        let contextDataDecoded = try containerValues.decodeIfPresent(ContextDataType.self, forKey: .contextData)
        contextData = contextDataDecoded
    }
}
