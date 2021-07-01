// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ViolationDetail: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case memberAccount = "MemberAccount"
        case policyId = "PolicyId"
        case resourceDescription = "ResourceDescription"
        case resourceId = "ResourceId"
        case resourceTags = "ResourceTags"
        case resourceType = "ResourceType"
        case resourceViolations = "ResourceViolations"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let memberAccount = memberAccount {
            try encodeContainer.encode(memberAccount, forKey: .memberAccount)
        }
        if let policyId = policyId {
            try encodeContainer.encode(policyId, forKey: .policyId)
        }
        if let resourceDescription = resourceDescription {
            try encodeContainer.encode(resourceDescription, forKey: .resourceDescription)
        }
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
        if let resourceTags = resourceTags {
            var resourceTagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resourceTags)
            for taglist0 in resourceTags {
                try resourceTagsContainer.encode(taglist0)
            }
        }
        if let resourceType = resourceType {
            try encodeContainer.encode(resourceType, forKey: .resourceType)
        }
        if let resourceViolations = resourceViolations {
            var resourceViolationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resourceViolations)
            for resourceviolations0 in resourceViolations {
                try resourceViolationsContainer.encode(resourceviolations0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let policyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .policyId)
        policyId = policyIdDecoded
        let memberAccountDecoded = try containerValues.decodeIfPresent(String.self, forKey: .memberAccount)
        memberAccount = memberAccountDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let resourceViolationsContainer = try containerValues.decodeIfPresent([ResourceViolation?].self, forKey: .resourceViolations)
        var resourceViolationsDecoded0:[ResourceViolation]? = nil
        if let resourceViolationsContainer = resourceViolationsContainer {
            resourceViolationsDecoded0 = [ResourceViolation]()
            for structure0 in resourceViolationsContainer {
                if let structure0 = structure0 {
                    resourceViolationsDecoded0?.append(structure0)
                }
            }
        }
        resourceViolations = resourceViolationsDecoded0
        let resourceTagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .resourceTags)
        var resourceTagsDecoded0:[Tag]? = nil
        if let resourceTagsContainer = resourceTagsContainer {
            resourceTagsDecoded0 = [Tag]()
            for structure0 in resourceTagsContainer {
                if let structure0 = structure0 {
                    resourceTagsDecoded0?.append(structure0)
                }
            }
        }
        resourceTags = resourceTagsDecoded0
        let resourceDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceDescription)
        resourceDescription = resourceDescriptionDecoded
    }
}