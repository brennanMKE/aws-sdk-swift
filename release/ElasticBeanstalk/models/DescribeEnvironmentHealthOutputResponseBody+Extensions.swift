// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeEnvironmentHealthOutputResponseBody: Equatable {
    public let environmentName: String?
    public let healthStatus: String?
    public let status: EnvironmentHealth?
    public let color: String?
    public let causes: [String]?
    public let applicationMetrics: ApplicationMetrics?
    public let instancesHealth: InstanceHealthSummary?
    public let refreshedAt: Date?
}

extension DescribeEnvironmentHealthOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationMetrics = "ApplicationMetrics"
        case causes = "Causes"
        case color = "Color"
        case environmentName = "EnvironmentName"
        case healthStatus = "HealthStatus"
        case instancesHealth = "InstancesHealth"
        case refreshedAt = "RefreshedAt"
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeEnvironmentHealthResult"))
        let environmentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .environmentName)
        environmentName = environmentNameDecoded
        let healthStatusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .healthStatus)
        healthStatus = healthStatusDecoded
        let statusDecoded = try containerValues.decodeIfPresent(EnvironmentHealth.self, forKey: .status)
        status = statusDecoded
        let colorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .color)
        color = colorDecoded
        if containerValues.contains(.causes) {
            struct KeyVal0{struct member{}}
            let causesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .causes)
            if let causesWrappedContainer = causesWrappedContainer {
                let causesContainer = try causesWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var causesBuffer:[String]? = nil
                if let causesContainer = causesContainer {
                    causesBuffer = [String]()
                    for stringContainer0 in causesContainer {
                        causesBuffer?.append(stringContainer0)
                    }
                }
                causes = causesBuffer
            } else {
                causes = []
            }
        } else {
            causes = nil
        }
        let applicationMetricsDecoded = try containerValues.decodeIfPresent(ApplicationMetrics.self, forKey: .applicationMetrics)
        applicationMetrics = applicationMetricsDecoded
        let instancesHealthDecoded = try containerValues.decodeIfPresent(InstanceHealthSummary.self, forKey: .instancesHealth)
        instancesHealth = instancesHealthDecoded
        let refreshedAtDecoded = try containerValues.decodeIfPresent(String.self, forKey: .refreshedAt)
        var refreshedAtBuffer:Date? = nil
        if let refreshedAtDecoded = refreshedAtDecoded {
            refreshedAtBuffer = try TimestampWrapperDecoder.parseDateStringValue(refreshedAtDecoded, format: .dateTime)
        }
        refreshedAt = refreshedAtBuffer
    }
}