// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UserPoolClientType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessTokenValidity = "AccessTokenValidity"
        case allowedOAuthFlows = "AllowedOAuthFlows"
        case allowedOAuthFlowsUserPoolClient = "AllowedOAuthFlowsUserPoolClient"
        case allowedOAuthScopes = "AllowedOAuthScopes"
        case analyticsConfiguration = "AnalyticsConfiguration"
        case callbackURLs = "CallbackURLs"
        case clientId = "ClientId"
        case clientName = "ClientName"
        case clientSecret = "ClientSecret"
        case creationDate = "CreationDate"
        case defaultRedirectURI = "DefaultRedirectURI"
        case explicitAuthFlows = "ExplicitAuthFlows"
        case idTokenValidity = "IdTokenValidity"
        case lastModifiedDate = "LastModifiedDate"
        case logoutURLs = "LogoutURLs"
        case preventUserExistenceErrors = "PreventUserExistenceErrors"
        case readAttributes = "ReadAttributes"
        case refreshTokenValidity = "RefreshTokenValidity"
        case supportedIdentityProviders = "SupportedIdentityProviders"
        case tokenValidityUnits = "TokenValidityUnits"
        case userPoolId = "UserPoolId"
        case writeAttributes = "WriteAttributes"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accessTokenValidity = accessTokenValidity {
            try container.encode(accessTokenValidity, forKey: .accessTokenValidity)
        }
        if let allowedOAuthFlows = allowedOAuthFlows {
            var allowedOAuthFlowsContainer = container.nestedUnkeyedContainer(forKey: .allowedOAuthFlows)
            for oauthflowstype0 in allowedOAuthFlows {
                try allowedOAuthFlowsContainer.encode(oauthflowstype0.rawValue)
            }
        }
        if allowedOAuthFlowsUserPoolClient != false {
            try container.encode(allowedOAuthFlowsUserPoolClient, forKey: .allowedOAuthFlowsUserPoolClient)
        }
        if let allowedOAuthScopes = allowedOAuthScopes {
            var allowedOAuthScopesContainer = container.nestedUnkeyedContainer(forKey: .allowedOAuthScopes)
            for scopelisttype0 in allowedOAuthScopes {
                try allowedOAuthScopesContainer.encode(scopelisttype0)
            }
        }
        if let analyticsConfiguration = analyticsConfiguration {
            try container.encode(analyticsConfiguration, forKey: .analyticsConfiguration)
        }
        if let callbackURLs = callbackURLs {
            var callbackURLsContainer = container.nestedUnkeyedContainer(forKey: .callbackURLs)
            for callbackurlslisttype0 in callbackURLs {
                try callbackURLsContainer.encode(callbackurlslisttype0)
            }
        }
        if let clientId = clientId {
            try container.encode(clientId, forKey: .clientId)
        }
        if let clientName = clientName {
            try container.encode(clientName, forKey: .clientName)
        }
        if let clientSecret = clientSecret {
            try container.encode(clientSecret, forKey: .clientSecret)
        }
        if let creationDate = creationDate {
            try container.encode(creationDate.timeIntervalSince1970, forKey: .creationDate)
        }
        if let defaultRedirectURI = defaultRedirectURI {
            try container.encode(defaultRedirectURI, forKey: .defaultRedirectURI)
        }
        if let explicitAuthFlows = explicitAuthFlows {
            var explicitAuthFlowsContainer = container.nestedUnkeyedContainer(forKey: .explicitAuthFlows)
            for explicitauthflowslisttype0 in explicitAuthFlows {
                try explicitAuthFlowsContainer.encode(explicitauthflowslisttype0.rawValue)
            }
        }
        if let idTokenValidity = idTokenValidity {
            try container.encode(idTokenValidity, forKey: .idTokenValidity)
        }
        if let lastModifiedDate = lastModifiedDate {
            try container.encode(lastModifiedDate.timeIntervalSince1970, forKey: .lastModifiedDate)
        }
        if let logoutURLs = logoutURLs {
            var logoutURLsContainer = container.nestedUnkeyedContainer(forKey: .logoutURLs)
            for logouturlslisttype0 in logoutURLs {
                try logoutURLsContainer.encode(logouturlslisttype0)
            }
        }
        if let preventUserExistenceErrors = preventUserExistenceErrors {
            try container.encode(preventUserExistenceErrors.rawValue, forKey: .preventUserExistenceErrors)
        }
        if let readAttributes = readAttributes {
            var readAttributesContainer = container.nestedUnkeyedContainer(forKey: .readAttributes)
            for clientpermissionlisttype0 in readAttributes {
                try readAttributesContainer.encode(clientpermissionlisttype0)
            }
        }
        if refreshTokenValidity != 0 {
            try container.encode(refreshTokenValidity, forKey: .refreshTokenValidity)
        }
        if let supportedIdentityProviders = supportedIdentityProviders {
            var supportedIdentityProvidersContainer = container.nestedUnkeyedContainer(forKey: .supportedIdentityProviders)
            for supportedidentityproviderslisttype0 in supportedIdentityProviders {
                try supportedIdentityProvidersContainer.encode(supportedidentityproviderslisttype0)
            }
        }
        if let tokenValidityUnits = tokenValidityUnits {
            try container.encode(tokenValidityUnits, forKey: .tokenValidityUnits)
        }
        if let userPoolId = userPoolId {
            try container.encode(userPoolId, forKey: .userPoolId)
        }
        if let writeAttributes = writeAttributes {
            var writeAttributesContainer = container.nestedUnkeyedContainer(forKey: .writeAttributes)
            for clientpermissionlisttype0 in writeAttributes {
                try writeAttributesContainer.encode(clientpermissionlisttype0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let clientNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientName)
        clientName = clientNameDecoded
        let clientIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientId)
        clientId = clientIdDecoded
        let clientSecretDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientSecret)
        clientSecret = clientSecretDecoded
        let lastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedDate)
        lastModifiedDate = lastModifiedDateDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
        let refreshTokenValidityDecoded = try containerValues.decode(Int.self, forKey: .refreshTokenValidity)
        refreshTokenValidity = refreshTokenValidityDecoded
        let accessTokenValidityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .accessTokenValidity)
        accessTokenValidity = accessTokenValidityDecoded
        let idTokenValidityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .idTokenValidity)
        idTokenValidity = idTokenValidityDecoded
        let tokenValidityUnitsDecoded = try containerValues.decodeIfPresent(TokenValidityUnitsType.self, forKey: .tokenValidityUnits)
        tokenValidityUnits = tokenValidityUnitsDecoded
        let readAttributesContainer = try containerValues.decodeIfPresent([String].self, forKey: .readAttributes)
        var readAttributesDecoded0:[String]? = nil
        if let readAttributesContainer = readAttributesContainer {
            readAttributesDecoded0 = [String]()
            for string0 in readAttributesContainer {
                readAttributesDecoded0?.append(string0)
            }
        }
        readAttributes = readAttributesDecoded0
        let writeAttributesContainer = try containerValues.decodeIfPresent([String].self, forKey: .writeAttributes)
        var writeAttributesDecoded0:[String]? = nil
        if let writeAttributesContainer = writeAttributesContainer {
            writeAttributesDecoded0 = [String]()
            for string0 in writeAttributesContainer {
                writeAttributesDecoded0?.append(string0)
            }
        }
        writeAttributes = writeAttributesDecoded0
        let explicitAuthFlowsContainer = try containerValues.decodeIfPresent([ExplicitAuthFlowsType].self, forKey: .explicitAuthFlows)
        var explicitAuthFlowsDecoded0:[ExplicitAuthFlowsType]? = nil
        if let explicitAuthFlowsContainer = explicitAuthFlowsContainer {
            explicitAuthFlowsDecoded0 = [ExplicitAuthFlowsType]()
            for string0 in explicitAuthFlowsContainer {
                explicitAuthFlowsDecoded0?.append(string0)
            }
        }
        explicitAuthFlows = explicitAuthFlowsDecoded0
        let supportedIdentityProvidersContainer = try containerValues.decodeIfPresent([String].self, forKey: .supportedIdentityProviders)
        var supportedIdentityProvidersDecoded0:[String]? = nil
        if let supportedIdentityProvidersContainer = supportedIdentityProvidersContainer {
            supportedIdentityProvidersDecoded0 = [String]()
            for string0 in supportedIdentityProvidersContainer {
                supportedIdentityProvidersDecoded0?.append(string0)
            }
        }
        supportedIdentityProviders = supportedIdentityProvidersDecoded0
        let callbackURLsContainer = try containerValues.decodeIfPresent([String].self, forKey: .callbackURLs)
        var callbackURLsDecoded0:[String]? = nil
        if let callbackURLsContainer = callbackURLsContainer {
            callbackURLsDecoded0 = [String]()
            for string0 in callbackURLsContainer {
                callbackURLsDecoded0?.append(string0)
            }
        }
        callbackURLs = callbackURLsDecoded0
        let logoutURLsContainer = try containerValues.decodeIfPresent([String].self, forKey: .logoutURLs)
        var logoutURLsDecoded0:[String]? = nil
        if let logoutURLsContainer = logoutURLsContainer {
            logoutURLsDecoded0 = [String]()
            for string0 in logoutURLsContainer {
                logoutURLsDecoded0?.append(string0)
            }
        }
        logoutURLs = logoutURLsDecoded0
        let defaultRedirectURIDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultRedirectURI)
        defaultRedirectURI = defaultRedirectURIDecoded
        let allowedOAuthFlowsContainer = try containerValues.decodeIfPresent([OAuthFlowType].self, forKey: .allowedOAuthFlows)
        var allowedOAuthFlowsDecoded0:[OAuthFlowType]? = nil
        if let allowedOAuthFlowsContainer = allowedOAuthFlowsContainer {
            allowedOAuthFlowsDecoded0 = [OAuthFlowType]()
            for string0 in allowedOAuthFlowsContainer {
                allowedOAuthFlowsDecoded0?.append(string0)
            }
        }
        allowedOAuthFlows = allowedOAuthFlowsDecoded0
        let allowedOAuthScopesContainer = try containerValues.decodeIfPresent([String].self, forKey: .allowedOAuthScopes)
        var allowedOAuthScopesDecoded0:[String]? = nil
        if let allowedOAuthScopesContainer = allowedOAuthScopesContainer {
            allowedOAuthScopesDecoded0 = [String]()
            for string0 in allowedOAuthScopesContainer {
                allowedOAuthScopesDecoded0?.append(string0)
            }
        }
        allowedOAuthScopes = allowedOAuthScopesDecoded0
        let allowedOAuthFlowsUserPoolClientDecoded = try containerValues.decode(Bool.self, forKey: .allowedOAuthFlowsUserPoolClient)
        allowedOAuthFlowsUserPoolClient = allowedOAuthFlowsUserPoolClientDecoded
        let analyticsConfigurationDecoded = try containerValues.decodeIfPresent(AnalyticsConfigurationType.self, forKey: .analyticsConfiguration)
        analyticsConfiguration = analyticsConfigurationDecoded
        let preventUserExistenceErrorsDecoded = try containerValues.decodeIfPresent(PreventUserExistenceErrorTypes.self, forKey: .preventUserExistenceErrors)
        preventUserExistenceErrors = preventUserExistenceErrorsDecoded
    }
}