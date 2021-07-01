// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SharePointConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case crawlAttachments = "CrawlAttachments"
        case disableLocalGroups = "DisableLocalGroups"
        case documentTitleFieldName = "DocumentTitleFieldName"
        case exclusionPatterns = "ExclusionPatterns"
        case fieldMappings = "FieldMappings"
        case inclusionPatterns = "InclusionPatterns"
        case secretArn = "SecretArn"
        case sharePointVersion = "SharePointVersion"
        case urls = "Urls"
        case useChangeLog = "UseChangeLog"
        case vpcConfiguration = "VpcConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if crawlAttachments != false {
            try encodeContainer.encode(crawlAttachments, forKey: .crawlAttachments)
        }
        if disableLocalGroups != false {
            try encodeContainer.encode(disableLocalGroups, forKey: .disableLocalGroups)
        }
        if let documentTitleFieldName = documentTitleFieldName {
            try encodeContainer.encode(documentTitleFieldName, forKey: .documentTitleFieldName)
        }
        if let exclusionPatterns = exclusionPatterns {
            var exclusionPatternsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .exclusionPatterns)
            for datasourceinclusionsexclusionsstrings0 in exclusionPatterns {
                try exclusionPatternsContainer.encode(datasourceinclusionsexclusionsstrings0)
            }
        }
        if let fieldMappings = fieldMappings {
            var fieldMappingsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .fieldMappings)
            for datasourcetoindexfieldmappinglist0 in fieldMappings {
                try fieldMappingsContainer.encode(datasourcetoindexfieldmappinglist0)
            }
        }
        if let inclusionPatterns = inclusionPatterns {
            var inclusionPatternsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .inclusionPatterns)
            for datasourceinclusionsexclusionsstrings0 in inclusionPatterns {
                try inclusionPatternsContainer.encode(datasourceinclusionsexclusionsstrings0)
            }
        }
        if let secretArn = secretArn {
            try encodeContainer.encode(secretArn, forKey: .secretArn)
        }
        if let sharePointVersion = sharePointVersion {
            try encodeContainer.encode(sharePointVersion.rawValue, forKey: .sharePointVersion)
        }
        if let urls = urls {
            var urlsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .urls)
            for sharepointurllist0 in urls {
                try urlsContainer.encode(sharepointurllist0)
            }
        }
        if useChangeLog != false {
            try encodeContainer.encode(useChangeLog, forKey: .useChangeLog)
        }
        if let vpcConfiguration = vpcConfiguration {
            try encodeContainer.encode(vpcConfiguration, forKey: .vpcConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sharePointVersionDecoded = try containerValues.decodeIfPresent(SharePointVersion.self, forKey: .sharePointVersion)
        sharePointVersion = sharePointVersionDecoded
        let urlsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .urls)
        var urlsDecoded0:[String]? = nil
        if let urlsContainer = urlsContainer {
            urlsDecoded0 = [String]()
            for string0 in urlsContainer {
                if let string0 = string0 {
                    urlsDecoded0?.append(string0)
                }
            }
        }
        urls = urlsDecoded0
        let secretArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretArn)
        secretArn = secretArnDecoded
        let crawlAttachmentsDecoded = try containerValues.decode(Bool.self, forKey: .crawlAttachments)
        crawlAttachments = crawlAttachmentsDecoded
        let useChangeLogDecoded = try containerValues.decode(Bool.self, forKey: .useChangeLog)
        useChangeLog = useChangeLogDecoded
        let inclusionPatternsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .inclusionPatterns)
        var inclusionPatternsDecoded0:[String]? = nil
        if let inclusionPatternsContainer = inclusionPatternsContainer {
            inclusionPatternsDecoded0 = [String]()
            for string0 in inclusionPatternsContainer {
                if let string0 = string0 {
                    inclusionPatternsDecoded0?.append(string0)
                }
            }
        }
        inclusionPatterns = inclusionPatternsDecoded0
        let exclusionPatternsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .exclusionPatterns)
        var exclusionPatternsDecoded0:[String]? = nil
        if let exclusionPatternsContainer = exclusionPatternsContainer {
            exclusionPatternsDecoded0 = [String]()
            for string0 in exclusionPatternsContainer {
                if let string0 = string0 {
                    exclusionPatternsDecoded0?.append(string0)
                }
            }
        }
        exclusionPatterns = exclusionPatternsDecoded0
        let vpcConfigurationDecoded = try containerValues.decodeIfPresent(DataSourceVpcConfiguration.self, forKey: .vpcConfiguration)
        vpcConfiguration = vpcConfigurationDecoded
        let fieldMappingsContainer = try containerValues.decodeIfPresent([DataSourceToIndexFieldMapping?].self, forKey: .fieldMappings)
        var fieldMappingsDecoded0:[DataSourceToIndexFieldMapping]? = nil
        if let fieldMappingsContainer = fieldMappingsContainer {
            fieldMappingsDecoded0 = [DataSourceToIndexFieldMapping]()
            for structure0 in fieldMappingsContainer {
                if let structure0 = structure0 {
                    fieldMappingsDecoded0?.append(structure0)
                }
            }
        }
        fieldMappings = fieldMappingsDecoded0
        let documentTitleFieldNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .documentTitleFieldName)
        documentTitleFieldName = documentTitleFieldNameDecoded
        let disableLocalGroupsDecoded = try containerValues.decode(Bool.self, forKey: .disableLocalGroups)
        disableLocalGroups = disableLocalGroupsDecoded
    }
}