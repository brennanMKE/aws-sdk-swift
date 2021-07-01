// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeHsmConfigurationsOutputResponseBody: Equatable {
    public let marker: String?
    public let hsmConfigurations: [HsmConfiguration]?
}

extension DescribeHsmConfigurationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case hsmConfigurations = "HsmConfigurations"
        case marker = "Marker"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeHsmConfigurationsResult"))
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
        if containerValues.contains(.hsmConfigurations) {
            struct KeyVal0{struct HsmConfiguration{}}
            let hsmConfigurationsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.HsmConfiguration>.CodingKeys.self, forKey: .hsmConfigurations)
            if let hsmConfigurationsWrappedContainer = hsmConfigurationsWrappedContainer {
                let hsmConfigurationsContainer = try hsmConfigurationsWrappedContainer.decodeIfPresent([HsmConfiguration].self, forKey: .member)
                var hsmConfigurationsBuffer:[HsmConfiguration]? = nil
                if let hsmConfigurationsContainer = hsmConfigurationsContainer {
                    hsmConfigurationsBuffer = [HsmConfiguration]()
                    for structureContainer0 in hsmConfigurationsContainer {
                        hsmConfigurationsBuffer?.append(structureContainer0)
                    }
                }
                hsmConfigurations = hsmConfigurationsBuffer
            } else {
                hsmConfigurations = []
            }
        } else {
            hsmConfigurations = nil
        }
    }
}