// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetMetricStatisticsOutputResponseBody: Equatable {
    public let label: String?
    public let datapoints: [Datapoint]?
}

extension GetMetricStatisticsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case datapoints = "Datapoints"
        case label = "Label"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("GetMetricStatisticsResult"))
        let labelDecoded = try containerValues.decodeIfPresent(String.self, forKey: .label)
        label = labelDecoded
        if containerValues.contains(.datapoints) {
            struct KeyVal0{struct member{}}
            let datapointsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .datapoints)
            if let datapointsWrappedContainer = datapointsWrappedContainer {
                let datapointsContainer = try datapointsWrappedContainer.decodeIfPresent([Datapoint].self, forKey: .member)
                var datapointsBuffer:[Datapoint]? = nil
                if let datapointsContainer = datapointsContainer {
                    datapointsBuffer = [Datapoint]()
                    for structureContainer0 in datapointsContainer {
                        datapointsBuffer?.append(structureContainer0)
                    }
                }
                datapoints = datapointsBuffer
            } else {
                datapoints = []
            }
        } else {
            datapoints = nil
        }
    }
}