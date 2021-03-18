// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UserPoolType: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accountRecoverySetting = "AccountRecoverySetting"
        case adminCreateUserConfig = "AdminCreateUserConfig"
        case aliasAttributes = "AliasAttributes"
        case arn = "Arn"
        case autoVerifiedAttributes = "AutoVerifiedAttributes"
        case creationDate = "CreationDate"
        case customDomain = "CustomDomain"
        case deviceConfiguration = "DeviceConfiguration"
        case domain = "Domain"
        case emailConfiguration = "EmailConfiguration"
        case emailConfigurationFailure = "EmailConfigurationFailure"
        case emailVerificationMessage = "EmailVerificationMessage"
        case emailVerificationSubject = "EmailVerificationSubject"
        case estimatedNumberOfUsers = "EstimatedNumberOfUsers"
        case id = "Id"
        case lambdaConfig = "LambdaConfig"
        case lastModifiedDate = "LastModifiedDate"
        case mfaConfiguration = "MfaConfiguration"
        case name = "Name"
        case policies = "Policies"
        case schemaAttributes = "SchemaAttributes"
        case smsAuthenticationMessage = "SmsAuthenticationMessage"
        case smsConfiguration = "SmsConfiguration"
        case smsConfigurationFailure = "SmsConfigurationFailure"
        case smsVerificationMessage = "SmsVerificationMessage"
        case status = "Status"
        case userPoolAddOns = "UserPoolAddOns"
        case userPoolTags = "UserPoolTags"
        case usernameAttributes = "UsernameAttributes"
        case usernameConfiguration = "UsernameConfiguration"
        case verificationMessageTemplate = "VerificationMessageTemplate"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accountRecoverySetting = accountRecoverySetting {
            try container.encode(accountRecoverySetting, forKey: .accountRecoverySetting)
        }
        if let adminCreateUserConfig = adminCreateUserConfig {
            try container.encode(adminCreateUserConfig, forKey: .adminCreateUserConfig)
        }
        if let aliasAttributes = aliasAttributes {
            var aliasAttributesContainer = container.nestedUnkeyedContainer(forKey: .aliasAttributes)
            for aliasattributeslisttype0 in aliasAttributes {
                try aliasAttributesContainer.encode(aliasattributeslisttype0.rawValue)
            }
        }
        if let arn = arn {
            try container.encode(arn, forKey: .arn)
        }
        if let autoVerifiedAttributes = autoVerifiedAttributes {
            var autoVerifiedAttributesContainer = container.nestedUnkeyedContainer(forKey: .autoVerifiedAttributes)
            for verifiedattributeslisttype0 in autoVerifiedAttributes {
                try autoVerifiedAttributesContainer.encode(verifiedattributeslisttype0.rawValue)
            }
        }
        if let creationDate = creationDate {
            try container.encode(creationDate.timeIntervalSince1970, forKey: .creationDate)
        }
        if let customDomain = customDomain {
            try container.encode(customDomain, forKey: .customDomain)
        }
        if let deviceConfiguration = deviceConfiguration {
            try container.encode(deviceConfiguration, forKey: .deviceConfiguration)
        }
        if let domain = domain {
            try container.encode(domain, forKey: .domain)
        }
        if let emailConfiguration = emailConfiguration {
            try container.encode(emailConfiguration, forKey: .emailConfiguration)
        }
        if let emailConfigurationFailure = emailConfigurationFailure {
            try container.encode(emailConfigurationFailure, forKey: .emailConfigurationFailure)
        }
        if let emailVerificationMessage = emailVerificationMessage {
            try container.encode(emailVerificationMessage, forKey: .emailVerificationMessage)
        }
        if let emailVerificationSubject = emailVerificationSubject {
            try container.encode(emailVerificationSubject, forKey: .emailVerificationSubject)
        }
        if estimatedNumberOfUsers != 0 {
            try container.encode(estimatedNumberOfUsers, forKey: .estimatedNumberOfUsers)
        }
        if let id = id {
            try container.encode(id, forKey: .id)
        }
        if let lambdaConfig = lambdaConfig {
            try container.encode(lambdaConfig, forKey: .lambdaConfig)
        }
        if let lastModifiedDate = lastModifiedDate {
            try container.encode(lastModifiedDate.timeIntervalSince1970, forKey: .lastModifiedDate)
        }
        if let mfaConfiguration = mfaConfiguration {
            try container.encode(mfaConfiguration.rawValue, forKey: .mfaConfiguration)
        }
        if let name = name {
            try container.encode(name, forKey: .name)
        }
        if let policies = policies {
            try container.encode(policies, forKey: .policies)
        }
        if let schemaAttributes = schemaAttributes {
            var schemaAttributesContainer = container.nestedUnkeyedContainer(forKey: .schemaAttributes)
            for schemaattributeslisttype0 in schemaAttributes {
                try schemaAttributesContainer.encode(schemaattributeslisttype0)
            }
        }
        if let smsAuthenticationMessage = smsAuthenticationMessage {
            try container.encode(smsAuthenticationMessage, forKey: .smsAuthenticationMessage)
        }
        if let smsConfiguration = smsConfiguration {
            try container.encode(smsConfiguration, forKey: .smsConfiguration)
        }
        if let smsConfigurationFailure = smsConfigurationFailure {
            try container.encode(smsConfigurationFailure, forKey: .smsConfigurationFailure)
        }
        if let smsVerificationMessage = smsVerificationMessage {
            try container.encode(smsVerificationMessage, forKey: .smsVerificationMessage)
        }
        if let status = status {
            try container.encode(status.rawValue, forKey: .status)
        }
        if let userPoolAddOns = userPoolAddOns {
            try container.encode(userPoolAddOns, forKey: .userPoolAddOns)
        }
        if let userPoolTags = userPoolTags {
            var userPoolTagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: .userPoolTags)
            for (dictKey0, userpooltagstype0) in userPoolTags {
                try userPoolTagsContainer.encode(userpooltagstype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let usernameAttributes = usernameAttributes {
            var usernameAttributesContainer = container.nestedUnkeyedContainer(forKey: .usernameAttributes)
            for usernameattributeslisttype0 in usernameAttributes {
                try usernameAttributesContainer.encode(usernameattributeslisttype0.rawValue)
            }
        }
        if let usernameConfiguration = usernameConfiguration {
            try container.encode(usernameConfiguration, forKey: .usernameConfiguration)
        }
        if let verificationMessageTemplate = verificationMessageTemplate {
            try container.encode(verificationMessageTemplate, forKey: .verificationMessageTemplate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let policiesDecoded = try containerValues.decodeIfPresent(UserPoolPolicyType.self, forKey: .policies)
        policies = policiesDecoded
        let lambdaConfigDecoded = try containerValues.decodeIfPresent(LambdaConfigType.self, forKey: .lambdaConfig)
        lambdaConfig = lambdaConfigDecoded
        let statusDecoded = try containerValues.decodeIfPresent(StatusType.self, forKey: .status)
        status = statusDecoded
        let lastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedDate)
        lastModifiedDate = lastModifiedDateDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
        let schemaAttributesContainer = try containerValues.decodeIfPresent([SchemaAttributeType].self, forKey: .schemaAttributes)
        var schemaAttributesDecoded0:[SchemaAttributeType]? = nil
        if let schemaAttributesContainer = schemaAttributesContainer {
            schemaAttributesDecoded0 = [SchemaAttributeType]()
            for structure0 in schemaAttributesContainer {
                schemaAttributesDecoded0?.append(structure0)
            }
        }
        schemaAttributes = schemaAttributesDecoded0
        let autoVerifiedAttributesContainer = try containerValues.decodeIfPresent([VerifiedAttributeType].self, forKey: .autoVerifiedAttributes)
        var autoVerifiedAttributesDecoded0:[VerifiedAttributeType]? = nil
        if let autoVerifiedAttributesContainer = autoVerifiedAttributesContainer {
            autoVerifiedAttributesDecoded0 = [VerifiedAttributeType]()
            for string0 in autoVerifiedAttributesContainer {
                autoVerifiedAttributesDecoded0?.append(string0)
            }
        }
        autoVerifiedAttributes = autoVerifiedAttributesDecoded0
        let aliasAttributesContainer = try containerValues.decodeIfPresent([AliasAttributeType].self, forKey: .aliasAttributes)
        var aliasAttributesDecoded0:[AliasAttributeType]? = nil
        if let aliasAttributesContainer = aliasAttributesContainer {
            aliasAttributesDecoded0 = [AliasAttributeType]()
            for string0 in aliasAttributesContainer {
                aliasAttributesDecoded0?.append(string0)
            }
        }
        aliasAttributes = aliasAttributesDecoded0
        let usernameAttributesContainer = try containerValues.decodeIfPresent([UsernameAttributeType].self, forKey: .usernameAttributes)
        var usernameAttributesDecoded0:[UsernameAttributeType]? = nil
        if let usernameAttributesContainer = usernameAttributesContainer {
            usernameAttributesDecoded0 = [UsernameAttributeType]()
            for string0 in usernameAttributesContainer {
                usernameAttributesDecoded0?.append(string0)
            }
        }
        usernameAttributes = usernameAttributesDecoded0
        let smsVerificationMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .smsVerificationMessage)
        smsVerificationMessage = smsVerificationMessageDecoded
        let emailVerificationMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emailVerificationMessage)
        emailVerificationMessage = emailVerificationMessageDecoded
        let emailVerificationSubjectDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emailVerificationSubject)
        emailVerificationSubject = emailVerificationSubjectDecoded
        let verificationMessageTemplateDecoded = try containerValues.decodeIfPresent(VerificationMessageTemplateType.self, forKey: .verificationMessageTemplate)
        verificationMessageTemplate = verificationMessageTemplateDecoded
        let smsAuthenticationMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .smsAuthenticationMessage)
        smsAuthenticationMessage = smsAuthenticationMessageDecoded
        let mfaConfigurationDecoded = try containerValues.decodeIfPresent(UserPoolMfaType.self, forKey: .mfaConfiguration)
        mfaConfiguration = mfaConfigurationDecoded
        let deviceConfigurationDecoded = try containerValues.decodeIfPresent(DeviceConfigurationType.self, forKey: .deviceConfiguration)
        deviceConfiguration = deviceConfigurationDecoded
        let estimatedNumberOfUsersDecoded = try containerValues.decode(Int.self, forKey: .estimatedNumberOfUsers)
        estimatedNumberOfUsers = estimatedNumberOfUsersDecoded
        let emailConfigurationDecoded = try containerValues.decodeIfPresent(EmailConfigurationType.self, forKey: .emailConfiguration)
        emailConfiguration = emailConfigurationDecoded
        let smsConfigurationDecoded = try containerValues.decodeIfPresent(SmsConfigurationType.self, forKey: .smsConfiguration)
        smsConfiguration = smsConfigurationDecoded
        let userPoolTagsContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .userPoolTags)
        var userPoolTagsDecoded0: [String:String]? = nil
        if let userPoolTagsContainer = userPoolTagsContainer {
            userPoolTagsDecoded0 = [String:String]()
            for (key0, tagvaluetype0) in userPoolTagsContainer {
                userPoolTagsDecoded0?[key0] = tagvaluetype0
            }
        }
        userPoolTags = userPoolTagsDecoded0
        let smsConfigurationFailureDecoded = try containerValues.decodeIfPresent(String.self, forKey: .smsConfigurationFailure)
        smsConfigurationFailure = smsConfigurationFailureDecoded
        let emailConfigurationFailureDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emailConfigurationFailure)
        emailConfigurationFailure = emailConfigurationFailureDecoded
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        let customDomainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customDomain)
        customDomain = customDomainDecoded
        let adminCreateUserConfigDecoded = try containerValues.decodeIfPresent(AdminCreateUserConfigType.self, forKey: .adminCreateUserConfig)
        adminCreateUserConfig = adminCreateUserConfigDecoded
        let userPoolAddOnsDecoded = try containerValues.decodeIfPresent(UserPoolAddOnsType.self, forKey: .userPoolAddOns)
        userPoolAddOns = userPoolAddOnsDecoded
        let usernameConfigurationDecoded = try containerValues.decodeIfPresent(UsernameConfigurationType.self, forKey: .usernameConfiguration)
        usernameConfiguration = usernameConfigurationDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let accountRecoverySettingDecoded = try containerValues.decodeIfPresent(AccountRecoverySettingType.self, forKey: .accountRecoverySetting)
        accountRecoverySetting = accountRecoverySettingDecoded
    }
}
