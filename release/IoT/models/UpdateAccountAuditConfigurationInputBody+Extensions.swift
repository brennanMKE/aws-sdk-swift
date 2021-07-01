// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateAccountAuditConfigurationInputBody: Equatable {
    public let roleArn: String?
    public let auditNotificationTargetConfigurations: [String:AuditNotificationTarget]?
    public let auditCheckConfigurations: [String:AuditCheckConfiguration]?
}

extension UpdateAccountAuditConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case auditCheckConfigurations
        case auditNotificationTargetConfigurations
        case roleArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let auditNotificationTargetConfigurationsContainer = try containerValues.decodeIfPresent([String: AuditNotificationTarget?].self, forKey: .auditNotificationTargetConfigurations)
        var auditNotificationTargetConfigurationsDecoded0: [String:AuditNotificationTarget]? = nil
        if let auditNotificationTargetConfigurationsContainer = auditNotificationTargetConfigurationsContainer {
            auditNotificationTargetConfigurationsDecoded0 = [String:AuditNotificationTarget]()
            for (key0, auditnotificationtarget0) in auditNotificationTargetConfigurationsContainer {
                if let auditnotificationtarget0 = auditnotificationtarget0 {
                    auditNotificationTargetConfigurationsDecoded0?[key0] = auditnotificationtarget0
                }
            }
        }
        auditNotificationTargetConfigurations = auditNotificationTargetConfigurationsDecoded0
        let auditCheckConfigurationsContainer = try containerValues.decodeIfPresent([String: AuditCheckConfiguration?].self, forKey: .auditCheckConfigurations)
        var auditCheckConfigurationsDecoded0: [String:AuditCheckConfiguration]? = nil
        if let auditCheckConfigurationsContainer = auditCheckConfigurationsContainer {
            auditCheckConfigurationsDecoded0 = [String:AuditCheckConfiguration]()
            for (key0, auditcheckconfiguration0) in auditCheckConfigurationsContainer {
                if let auditcheckconfiguration0 = auditcheckconfiguration0 {
                    auditCheckConfigurationsDecoded0?[key0] = auditcheckconfiguration0
                }
            }
        }
        auditCheckConfigurations = auditCheckConfigurationsDecoded0
    }
}