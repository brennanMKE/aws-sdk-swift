// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAuditMitigationActionsTaskOutputResponseBody: Equatable {
    public let taskStatus: AuditMitigationActionsTaskStatus?
    public let startTime: Date?
    public let endTime: Date?
    public let taskStatistics: [String:TaskStatisticsForAuditCheck]?
    public let target: AuditMitigationActionsTaskTarget?
    public let auditCheckToActionsMapping: [String:[String]]?
    public let actionsDefinition: [MitigationAction]?
}

extension DescribeAuditMitigationActionsTaskOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case actionsDefinition
        case auditCheckToActionsMapping
        case endTime
        case startTime
        case target
        case taskStatistics
        case taskStatus
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let taskStatusDecoded = try containerValues.decodeIfPresent(AuditMitigationActionsTaskStatus.self, forKey: .taskStatus)
        taskStatus = taskStatusDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
        let taskStatisticsContainer = try containerValues.decodeIfPresent([String: TaskStatisticsForAuditCheck?].self, forKey: .taskStatistics)
        var taskStatisticsDecoded0: [String:TaskStatisticsForAuditCheck]? = nil
        if let taskStatisticsContainer = taskStatisticsContainer {
            taskStatisticsDecoded0 = [String:TaskStatisticsForAuditCheck]()
            for (key0, taskstatisticsforauditcheck0) in taskStatisticsContainer {
                if let taskstatisticsforauditcheck0 = taskstatisticsforauditcheck0 {
                    taskStatisticsDecoded0?[key0] = taskstatisticsforauditcheck0
                }
            }
        }
        taskStatistics = taskStatisticsDecoded0
        let targetDecoded = try containerValues.decodeIfPresent(AuditMitigationActionsTaskTarget.self, forKey: .target)
        target = targetDecoded
        let auditCheckToActionsMappingContainer = try containerValues.decodeIfPresent([String: [String?]?].self, forKey: .auditCheckToActionsMapping)
        var auditCheckToActionsMappingDecoded0: [String:[String]]? = nil
        if let auditCheckToActionsMappingContainer = auditCheckToActionsMappingContainer {
            auditCheckToActionsMappingDecoded0 = [String:[String]]()
            for (key0, mitigationactionnamelist0) in auditCheckToActionsMappingContainer {
                var mitigationactionnamelist0Decoded0: [String]? = nil
                if let mitigationactionnamelist0 = mitigationactionnamelist0 {
                    mitigationactionnamelist0Decoded0 = [String]()
                    for string1 in mitigationactionnamelist0 {
                        if let string1 = string1 {
                            mitigationactionnamelist0Decoded0?.append(string1)
                        }
                    }
                }
                auditCheckToActionsMappingDecoded0?[key0] = mitigationactionnamelist0Decoded0
            }
        }
        auditCheckToActionsMapping = auditCheckToActionsMappingDecoded0
        let actionsDefinitionContainer = try containerValues.decodeIfPresent([MitigationAction?].self, forKey: .actionsDefinition)
        var actionsDefinitionDecoded0:[MitigationAction]? = nil
        if let actionsDefinitionContainer = actionsDefinitionContainer {
            actionsDefinitionDecoded0 = [MitigationAction]()
            for structure0 in actionsDefinitionContainer {
                if let structure0 = structure0 {
                    actionsDefinitionDecoded0?.append(structure0)
                }
            }
        }
        actionsDefinition = actionsDefinitionDecoded0
    }
}