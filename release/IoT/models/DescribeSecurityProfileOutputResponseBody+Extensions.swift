// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeSecurityProfileOutputResponseBody: Equatable {
    public let securityProfileName: String?
    public let securityProfileArn: String?
    public let securityProfileDescription: String?
    public let behaviors: [Behavior]?
    public let alertTargets: [String:AlertTarget]?
    public let additionalMetricsToRetain: [String]?
    public let additionalMetricsToRetainV2: [MetricToRetain]?
    public let version: Int
    public let creationDate: Date?
    public let lastModifiedDate: Date?
}

extension DescribeSecurityProfileOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case additionalMetricsToRetain
        case additionalMetricsToRetainV2
        case alertTargets
        case behaviors
        case creationDate
        case lastModifiedDate
        case securityProfileArn
        case securityProfileDescription
        case securityProfileName
        case version
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let securityProfileNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .securityProfileName)
        securityProfileName = securityProfileNameDecoded
        let securityProfileArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .securityProfileArn)
        securityProfileArn = securityProfileArnDecoded
        let securityProfileDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .securityProfileDescription)
        securityProfileDescription = securityProfileDescriptionDecoded
        let behaviorsContainer = try containerValues.decodeIfPresent([Behavior?].self, forKey: .behaviors)
        var behaviorsDecoded0:[Behavior]? = nil
        if let behaviorsContainer = behaviorsContainer {
            behaviorsDecoded0 = [Behavior]()
            for structure0 in behaviorsContainer {
                if let structure0 = structure0 {
                    behaviorsDecoded0?.append(structure0)
                }
            }
        }
        behaviors = behaviorsDecoded0
        let alertTargetsContainer = try containerValues.decodeIfPresent([String: AlertTarget?].self, forKey: .alertTargets)
        var alertTargetsDecoded0: [String:AlertTarget]? = nil
        if let alertTargetsContainer = alertTargetsContainer {
            alertTargetsDecoded0 = [String:AlertTarget]()
            for (key0, alerttarget0) in alertTargetsContainer {
                if let alerttarget0 = alerttarget0 {
                    alertTargetsDecoded0?[key0] = alerttarget0
                }
            }
        }
        alertTargets = alertTargetsDecoded0
        let additionalMetricsToRetainContainer = try containerValues.decodeIfPresent([String?].self, forKey: .additionalMetricsToRetain)
        var additionalMetricsToRetainDecoded0:[String]? = nil
        if let additionalMetricsToRetainContainer = additionalMetricsToRetainContainer {
            additionalMetricsToRetainDecoded0 = [String]()
            for string0 in additionalMetricsToRetainContainer {
                if let string0 = string0 {
                    additionalMetricsToRetainDecoded0?.append(string0)
                }
            }
        }
        additionalMetricsToRetain = additionalMetricsToRetainDecoded0
        let additionalMetricsToRetainV2Container = try containerValues.decodeIfPresent([MetricToRetain?].self, forKey: .additionalMetricsToRetainV2)
        var additionalMetricsToRetainV2Decoded0:[MetricToRetain]? = nil
        if let additionalMetricsToRetainV2Container = additionalMetricsToRetainV2Container {
            additionalMetricsToRetainV2Decoded0 = [MetricToRetain]()
            for structure0 in additionalMetricsToRetainV2Container {
                if let structure0 = structure0 {
                    additionalMetricsToRetainV2Decoded0?.append(structure0)
                }
            }
        }
        additionalMetricsToRetainV2 = additionalMetricsToRetainV2Decoded0
        let versionDecoded = try containerValues.decode(Int.self, forKey: .version)
        version = versionDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
        let lastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedDate)
        lastModifiedDate = lastModifiedDateDecoded
    }
}