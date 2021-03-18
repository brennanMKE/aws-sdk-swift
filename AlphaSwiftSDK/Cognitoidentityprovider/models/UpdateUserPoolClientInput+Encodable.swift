// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UpdateUserPoolClientInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessTokenValidity = "AccessTokenValidity"
        case allowedOAuthFlows = "AllowedOAuthFlows"
        case allowedOAuthFlowsUserPoolClient = "AllowedOAuthFlowsUserPoolClient"
        case allowedOAuthScopes = "AllowedOAuthScopes"
        case analyticsConfiguration = "AnalyticsConfiguration"
        case callbackURLs = "CallbackURLs"
        case clientId = "ClientId"
        case clientName = "ClientName"
        case defaultRedirectURI = "DefaultRedirectURI"
        case explicitAuthFlows = "ExplicitAuthFlows"
        case idTokenValidity = "IdTokenValidity"
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
}
