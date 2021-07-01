// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFleetLocationsOutputResponseBody: Equatable {
    public let fleetId: String?
    public let fleetArn: String?
    public let locationStates: [LocationState]?
}

extension CreateFleetLocationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fleetArn = "FleetArn"
        case fleetId = "FleetId"
        case locationStates = "LocationStates"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetId)
        fleetId = fleetIdDecoded
        let fleetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetArn)
        fleetArn = fleetArnDecoded
        let locationStatesContainer = try containerValues.decodeIfPresent([LocationState?].self, forKey: .locationStates)
        var locationStatesDecoded0:[LocationState]? = nil
        if let locationStatesContainer = locationStatesContainer {
            locationStatesDecoded0 = [LocationState]()
            for structure0 in locationStatesContainer {
                if let structure0 = structure0 {
                    locationStatesDecoded0?.append(structure0)
                }
            }
        }
        locationStates = locationStatesDecoded0
    }
}