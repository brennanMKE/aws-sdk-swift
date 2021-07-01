// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetGroupsForCapacityReservationOutputResponseBody: Equatable {
    public let nextToken: String?
    public let capacityReservationGroups: [CapacityReservationGroup]?
}

extension GetGroupsForCapacityReservationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case capacityReservationGroups = "capacityReservationGroupSet"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        if containerValues.contains(.capacityReservationGroups) {
            struct KeyVal0{struct item{}}
            let capacityReservationGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .capacityReservationGroups)
            if let capacityReservationGroupsWrappedContainer = capacityReservationGroupsWrappedContainer {
                let capacityReservationGroupsContainer = try capacityReservationGroupsWrappedContainer.decodeIfPresent([CapacityReservationGroup].self, forKey: .member)
                var capacityReservationGroupsBuffer:[CapacityReservationGroup]? = nil
                if let capacityReservationGroupsContainer = capacityReservationGroupsContainer {
                    capacityReservationGroupsBuffer = [CapacityReservationGroup]()
                    for structureContainer0 in capacityReservationGroupsContainer {
                        capacityReservationGroupsBuffer?.append(structureContainer0)
                    }
                }
                capacityReservationGroups = capacityReservationGroupsBuffer
            } else {
                capacityReservationGroups = []
            }
        } else {
            capacityReservationGroups = nil
        }
    }
}