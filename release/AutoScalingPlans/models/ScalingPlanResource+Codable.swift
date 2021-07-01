// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ScalingPlanResource: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resourceId = "ResourceId"
        case scalableDimension = "ScalableDimension"
        case scalingPlanName = "ScalingPlanName"
        case scalingPlanVersion = "ScalingPlanVersion"
        case scalingPolicies = "ScalingPolicies"
        case scalingStatusCode = "ScalingStatusCode"
        case scalingStatusMessage = "ScalingStatusMessage"
        case serviceNamespace = "ServiceNamespace"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
        if let scalableDimension = scalableDimension {
            try encodeContainer.encode(scalableDimension.rawValue, forKey: .scalableDimension)
        }
        if let scalingPlanName = scalingPlanName {
            try encodeContainer.encode(scalingPlanName, forKey: .scalingPlanName)
        }
        if let scalingPlanVersion = scalingPlanVersion {
            try encodeContainer.encode(scalingPlanVersion, forKey: .scalingPlanVersion)
        }
        if let scalingPolicies = scalingPolicies {
            var scalingPoliciesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .scalingPolicies)
            for scalingpolicies0 in scalingPolicies {
                try scalingPoliciesContainer.encode(scalingpolicies0)
            }
        }
        if let scalingStatusCode = scalingStatusCode {
            try encodeContainer.encode(scalingStatusCode.rawValue, forKey: .scalingStatusCode)
        }
        if let scalingStatusMessage = scalingStatusMessage {
            try encodeContainer.encode(scalingStatusMessage, forKey: .scalingStatusMessage)
        }
        if let serviceNamespace = serviceNamespace {
            try encodeContainer.encode(serviceNamespace.rawValue, forKey: .serviceNamespace)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let scalingPlanNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scalingPlanName)
        scalingPlanName = scalingPlanNameDecoded
        let scalingPlanVersionDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .scalingPlanVersion)
        scalingPlanVersion = scalingPlanVersionDecoded
        let serviceNamespaceDecoded = try containerValues.decodeIfPresent(ServiceNamespace.self, forKey: .serviceNamespace)
        serviceNamespace = serviceNamespaceDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let scalableDimensionDecoded = try containerValues.decodeIfPresent(ScalableDimension.self, forKey: .scalableDimension)
        scalableDimension = scalableDimensionDecoded
        let scalingPoliciesContainer = try containerValues.decodeIfPresent([ScalingPolicy?].self, forKey: .scalingPolicies)
        var scalingPoliciesDecoded0:[ScalingPolicy]? = nil
        if let scalingPoliciesContainer = scalingPoliciesContainer {
            scalingPoliciesDecoded0 = [ScalingPolicy]()
            for structure0 in scalingPoliciesContainer {
                if let structure0 = structure0 {
                    scalingPoliciesDecoded0?.append(structure0)
                }
            }
        }
        scalingPolicies = scalingPoliciesDecoded0
        let scalingStatusCodeDecoded = try containerValues.decodeIfPresent(ScalingStatusCode.self, forKey: .scalingStatusCode)
        scalingStatusCode = scalingStatusCodeDecoded
        let scalingStatusMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scalingStatusMessage)
        scalingStatusMessage = scalingStatusMessageDecoded
    }
}