// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateIdentityPoolInputBody: Equatable {
    public let identityPoolId: String?
    public let identityPoolName: String?
    public let allowUnauthenticatedIdentities: Bool
    public let allowClassicFlow: Bool?
    public let supportedLoginProviders: [String:String]?
    public let developerProviderName: String?
    public let openIdConnectProviderARNs: [String]?
    public let cognitoIdentityProviders: [CognitoIdentityProvider]?
    public let samlProviderARNs: [String]?
    public let identityPoolTags: [String:String]?
}

extension UpdateIdentityPoolInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case allowClassicFlow = "AllowClassicFlow"
        case allowUnauthenticatedIdentities = "AllowUnauthenticatedIdentities"
        case cognitoIdentityProviders = "CognitoIdentityProviders"
        case developerProviderName = "DeveloperProviderName"
        case identityPoolId = "IdentityPoolId"
        case identityPoolName = "IdentityPoolName"
        case identityPoolTags = "IdentityPoolTags"
        case openIdConnectProviderARNs = "OpenIdConnectProviderARNs"
        case samlProviderARNs = "SamlProviderARNs"
        case supportedLoginProviders = "SupportedLoginProviders"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityPoolId)
        identityPoolId = identityPoolIdDecoded
        let identityPoolNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityPoolName)
        identityPoolName = identityPoolNameDecoded
        let allowUnauthenticatedIdentitiesDecoded = try containerValues.decode(Bool.self, forKey: .allowUnauthenticatedIdentities)
        allowUnauthenticatedIdentities = allowUnauthenticatedIdentitiesDecoded
        let allowClassicFlowDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .allowClassicFlow)
        allowClassicFlow = allowClassicFlowDecoded
        let supportedLoginProvidersContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .supportedLoginProviders)
        var supportedLoginProvidersDecoded0: [String:String]? = nil
        if let supportedLoginProvidersContainer = supportedLoginProvidersContainer {
            supportedLoginProvidersDecoded0 = [String:String]()
            for (key0, identityproviderid0) in supportedLoginProvidersContainer {
                supportedLoginProvidersDecoded0?[key0] = identityproviderid0
            }
        }
        supportedLoginProviders = supportedLoginProvidersDecoded0
        let developerProviderNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .developerProviderName)
        developerProviderName = developerProviderNameDecoded
        let openIdConnectProviderARNsContainer = try containerValues.decodeIfPresent([String].self, forKey: .openIdConnectProviderARNs)
        var openIdConnectProviderARNsDecoded0:[String]? = nil
        if let openIdConnectProviderARNsContainer = openIdConnectProviderARNsContainer {
            openIdConnectProviderARNsDecoded0 = [String]()
            for string0 in openIdConnectProviderARNsContainer {
                openIdConnectProviderARNsDecoded0?.append(string0)
            }
        }
        openIdConnectProviderARNs = openIdConnectProviderARNsDecoded0
        let cognitoIdentityProvidersContainer = try containerValues.decodeIfPresent([CognitoIdentityProvider].self, forKey: .cognitoIdentityProviders)
        var cognitoIdentityProvidersDecoded0:[CognitoIdentityProvider]? = nil
        if let cognitoIdentityProvidersContainer = cognitoIdentityProvidersContainer {
            cognitoIdentityProvidersDecoded0 = [CognitoIdentityProvider]()
            for structure0 in cognitoIdentityProvidersContainer {
                cognitoIdentityProvidersDecoded0?.append(structure0)
            }
        }
        cognitoIdentityProviders = cognitoIdentityProvidersDecoded0
        let samlProviderARNsContainer = try containerValues.decodeIfPresent([String].self, forKey: .samlProviderARNs)
        var samlProviderARNsDecoded0:[String]? = nil
        if let samlProviderARNsContainer = samlProviderARNsContainer {
            samlProviderARNsDecoded0 = [String]()
            for string0 in samlProviderARNsContainer {
                samlProviderARNsDecoded0?.append(string0)
            }
        }
        samlProviderARNs = samlProviderARNsDecoded0
        let identityPoolTagsContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .identityPoolTags)
        var identityPoolTagsDecoded0: [String:String]? = nil
        if let identityPoolTagsContainer = identityPoolTagsContainer {
            identityPoolTagsDecoded0 = [String:String]()
            for (key0, tagvaluetype0) in identityPoolTagsContainer {
                identityPoolTagsDecoded0?[key0] = tagvaluetype0
            }
        }
        identityPoolTags = identityPoolTagsDecoded0
    }
}
