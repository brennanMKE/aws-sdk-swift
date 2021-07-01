// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Evidence: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentReportSelection
        case attributes
        case awsAccountId
        case awsOrganization
        case complianceCheck
        case dataSource
        case eventName
        case eventSource
        case evidenceAwsAccountId
        case evidenceByType
        case evidenceFolderId
        case iamId
        case id
        case resourcesIncluded
        case time
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentReportSelection = assessmentReportSelection {
            try encodeContainer.encode(assessmentReportSelection, forKey: .assessmentReportSelection)
        }
        if let attributes = attributes {
            var attributesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .attributes)
            for (dictKey0, evidenceattributes0) in attributes {
                try attributesContainer.encode(evidenceattributes0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let awsAccountId = awsAccountId {
            try encodeContainer.encode(awsAccountId, forKey: .awsAccountId)
        }
        if let awsOrganization = awsOrganization {
            try encodeContainer.encode(awsOrganization, forKey: .awsOrganization)
        }
        if let complianceCheck = complianceCheck {
            try encodeContainer.encode(complianceCheck, forKey: .complianceCheck)
        }
        if let dataSource = dataSource {
            try encodeContainer.encode(dataSource, forKey: .dataSource)
        }
        if let eventName = eventName {
            try encodeContainer.encode(eventName, forKey: .eventName)
        }
        if let eventSource = eventSource {
            try encodeContainer.encode(eventSource, forKey: .eventSource)
        }
        if let evidenceAwsAccountId = evidenceAwsAccountId {
            try encodeContainer.encode(evidenceAwsAccountId, forKey: .evidenceAwsAccountId)
        }
        if let evidenceByType = evidenceByType {
            try encodeContainer.encode(evidenceByType, forKey: .evidenceByType)
        }
        if let evidenceFolderId = evidenceFolderId {
            try encodeContainer.encode(evidenceFolderId, forKey: .evidenceFolderId)
        }
        if let iamId = iamId {
            try encodeContainer.encode(iamId, forKey: .iamId)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let resourcesIncluded = resourcesIncluded {
            var resourcesIncludedContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resourcesIncluded)
            for resources0 in resourcesIncluded {
                try resourcesIncludedContainer.encode(resources0)
            }
        }
        if let time = time {
            try encodeContainer.encode(time.timeIntervalSince1970, forKey: .time)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSourceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataSource)
        dataSource = dataSourceDecoded
        let evidenceAwsAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .evidenceAwsAccountId)
        evidenceAwsAccountId = evidenceAwsAccountIdDecoded
        let timeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .time)
        time = timeDecoded
        let eventSourceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventSource)
        eventSource = eventSourceDecoded
        let eventNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventName)
        eventName = eventNameDecoded
        let evidenceByTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .evidenceByType)
        evidenceByType = evidenceByTypeDecoded
        let resourcesIncludedContainer = try containerValues.decodeIfPresent([Resource?].self, forKey: .resourcesIncluded)
        var resourcesIncludedDecoded0:[Resource]? = nil
        if let resourcesIncludedContainer = resourcesIncludedContainer {
            resourcesIncludedDecoded0 = [Resource]()
            for structure0 in resourcesIncludedContainer {
                if let structure0 = structure0 {
                    resourcesIncludedDecoded0?.append(structure0)
                }
            }
        }
        resourcesIncluded = resourcesIncludedDecoded0
        let attributesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .attributes)
        var attributesDecoded0: [String:String]? = nil
        if let attributesContainer = attributesContainer {
            attributesDecoded0 = [String:String]()
            for (key0, evidenceattributevalue0) in attributesContainer {
                if let evidenceattributevalue0 = evidenceattributevalue0 {
                    attributesDecoded0?[key0] = evidenceattributevalue0
                }
            }
        }
        attributes = attributesDecoded0
        let iamIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .iamId)
        iamId = iamIdDecoded
        let complianceCheckDecoded = try containerValues.decodeIfPresent(String.self, forKey: .complianceCheck)
        complianceCheck = complianceCheckDecoded
        let awsOrganizationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .awsOrganization)
        awsOrganization = awsOrganizationDecoded
        let awsAccountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .awsAccountId)
        awsAccountId = awsAccountIdDecoded
        let evidenceFolderIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .evidenceFolderId)
        evidenceFolderId = evidenceFolderIdDecoded
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let assessmentReportSelectionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentReportSelection)
        assessmentReportSelection = assessmentReportSelectionDecoded
    }
}