// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct CreateUserPoolInputBody: Equatable {
    public let poolName: String?
    public let policies: UserPoolPolicyType?
    public let lambdaConfig: LambdaConfigType?
    public let autoVerifiedAttributes: [VerifiedAttributeType]?
    public let aliasAttributes: [AliasAttributeType]?
    public let usernameAttributes: [UsernameAttributeType]?
    public let smsVerificationMessage: String?
    public let emailVerificationMessage: String?
    public let emailVerificationSubject: String?
    public let verificationMessageTemplate: VerificationMessageTemplateType?
    public let smsAuthenticationMessage: String?
    public let mfaConfiguration: UserPoolMfaType?
    public let deviceConfiguration: DeviceConfigurationType?
    public let emailConfiguration: EmailConfigurationType?
    public let smsConfiguration: SmsConfigurationType?
    public let userPoolTags: [String:String]?
    public let adminCreateUserConfig: AdminCreateUserConfigType?
    public let schema: [SchemaAttributeType]?
    public let userPoolAddOns: UserPoolAddOnsType?
    public let usernameConfiguration: UsernameConfigurationType?
    public let accountRecoverySetting: AccountRecoverySettingType?
}

extension CreateUserPoolInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case accountRecoverySetting = "AccountRecoverySetting"
        case adminCreateUserConfig = "AdminCreateUserConfig"
        case aliasAttributes = "AliasAttributes"
        case autoVerifiedAttributes = "AutoVerifiedAttributes"
        case deviceConfiguration = "DeviceConfiguration"
        case emailConfiguration = "EmailConfiguration"
        case emailVerificationMessage = "EmailVerificationMessage"
        case emailVerificationSubject = "EmailVerificationSubject"
        case lambdaConfig = "LambdaConfig"
        case mfaConfiguration = "MfaConfiguration"
        case policies = "Policies"
        case poolName = "PoolName"
        case schema = "Schema"
        case smsAuthenticationMessage = "SmsAuthenticationMessage"
        case smsConfiguration = "SmsConfiguration"
        case smsVerificationMessage = "SmsVerificationMessage"
        case userPoolAddOns = "UserPoolAddOns"
        case userPoolTags = "UserPoolTags"
        case usernameAttributes = "UsernameAttributes"
        case usernameConfiguration = "UsernameConfiguration"
        case verificationMessageTemplate = "VerificationMessageTemplate"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let poolNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .poolName)
        poolName = poolNameDecoded
        let policiesDecoded = try containerValues.decodeIfPresent(UserPoolPolicyType.self, forKey: .policies)
        policies = policiesDecoded
        let lambdaConfigDecoded = try containerValues.decodeIfPresent(LambdaConfigType.self, forKey: .lambdaConfig)
        lambdaConfig = lambdaConfigDecoded
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
        let adminCreateUserConfigDecoded = try containerValues.decodeIfPresent(AdminCreateUserConfigType.self, forKey: .adminCreateUserConfig)
        adminCreateUserConfig = adminCreateUserConfigDecoded
        let schemaContainer = try containerValues.decodeIfPresent([SchemaAttributeType].self, forKey: .schema)
        var schemaDecoded0:[SchemaAttributeType]? = nil
        if let schemaContainer = schemaContainer {
            schemaDecoded0 = [SchemaAttributeType]()
            for structure0 in schemaContainer {
                schemaDecoded0?.append(structure0)
            }
        }
        schema = schemaDecoded0
        let userPoolAddOnsDecoded = try containerValues.decodeIfPresent(UserPoolAddOnsType.self, forKey: .userPoolAddOns)
        userPoolAddOns = userPoolAddOnsDecoded
        let usernameConfigurationDecoded = try containerValues.decodeIfPresent(UsernameConfigurationType.self, forKey: .usernameConfiguration)
        usernameConfiguration = usernameConfigurationDecoded
        let accountRecoverySettingDecoded = try containerValues.decodeIfPresent(AccountRecoverySettingType.self, forKey: .accountRecoverySetting)
        accountRecoverySetting = accountRecoverySettingDecoded
    }
}
