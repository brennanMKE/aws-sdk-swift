// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ProvisionedProductPlanDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdTime = "CreatedTime"
        case notificationArns = "NotificationArns"
        case pathId = "PathId"
        case planId = "PlanId"
        case planName = "PlanName"
        case planType = "PlanType"
        case productId = "ProductId"
        case provisionProductId = "ProvisionProductId"
        case provisionProductName = "ProvisionProductName"
        case provisioningArtifactId = "ProvisioningArtifactId"
        case provisioningParameters = "ProvisioningParameters"
        case status = "Status"
        case statusMessage = "StatusMessage"
        case tags = "Tags"
        case updatedTime = "UpdatedTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime.timeIntervalSince1970, forKey: .createdTime)
        }
        if let notificationArns = notificationArns {
            var notificationArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .notificationArns)
            for notificationarns0 in notificationArns {
                try notificationArnsContainer.encode(notificationarns0)
            }
        }
        if let pathId = pathId {
            try encodeContainer.encode(pathId, forKey: .pathId)
        }
        if let planId = planId {
            try encodeContainer.encode(planId, forKey: .planId)
        }
        if let planName = planName {
            try encodeContainer.encode(planName, forKey: .planName)
        }
        if let planType = planType {
            try encodeContainer.encode(planType.rawValue, forKey: .planType)
        }
        if let productId = productId {
            try encodeContainer.encode(productId, forKey: .productId)
        }
        if let provisionProductId = provisionProductId {
            try encodeContainer.encode(provisionProductId, forKey: .provisionProductId)
        }
        if let provisionProductName = provisionProductName {
            try encodeContainer.encode(provisionProductName, forKey: .provisionProductName)
        }
        if let provisioningArtifactId = provisioningArtifactId {
            try encodeContainer.encode(provisioningArtifactId, forKey: .provisioningArtifactId)
        }
        if let provisioningParameters = provisioningParameters {
            var provisioningParametersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .provisioningParameters)
            for updateprovisioningparameters0 in provisioningParameters {
                try provisioningParametersContainer.encode(updateprovisioningparameters0)
            }
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let statusMessage = statusMessage {
            try encodeContainer.encode(statusMessage, forKey: .statusMessage)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
        if let updatedTime = updatedTime {
            try encodeContainer.encode(updatedTime.timeIntervalSince1970, forKey: .updatedTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let createdTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
        let pathIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pathId)
        pathId = pathIdDecoded
        let productIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .productId)
        productId = productIdDecoded
        let planNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .planName)
        planName = planNameDecoded
        let planIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .planId)
        planId = planIdDecoded
        let provisionProductIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisionProductId)
        provisionProductId = provisionProductIdDecoded
        let provisionProductNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisionProductName)
        provisionProductName = provisionProductNameDecoded
        let planTypeDecoded = try containerValues.decodeIfPresent(ProvisionedProductPlanType.self, forKey: .planType)
        planType = planTypeDecoded
        let provisioningArtifactIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisioningArtifactId)
        provisioningArtifactId = provisioningArtifactIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ProvisionedProductPlanStatus.self, forKey: .status)
        status = statusDecoded
        let updatedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .updatedTime)
        updatedTime = updatedTimeDecoded
        let notificationArnsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .notificationArns)
        var notificationArnsDecoded0:[String]? = nil
        if let notificationArnsContainer = notificationArnsContainer {
            notificationArnsDecoded0 = [String]()
            for string0 in notificationArnsContainer {
                if let string0 = string0 {
                    notificationArnsDecoded0?.append(string0)
                }
            }
        }
        notificationArns = notificationArnsDecoded0
        let provisioningParametersContainer = try containerValues.decodeIfPresent([UpdateProvisioningParameter?].self, forKey: .provisioningParameters)
        var provisioningParametersDecoded0:[UpdateProvisioningParameter]? = nil
        if let provisioningParametersContainer = provisioningParametersContainer {
            provisioningParametersDecoded0 = [UpdateProvisioningParameter]()
            for structure0 in provisioningParametersContainer {
                if let structure0 = structure0 {
                    provisioningParametersDecoded0?.append(structure0)
                }
            }
        }
        provisioningParameters = provisioningParametersDecoded0
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let statusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusMessage)
        statusMessage = statusMessageDecoded
    }
}