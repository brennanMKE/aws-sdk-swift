// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetWorkingLocationInputBody: Equatable {
    public let locationType: LocationType?
}

extension GetWorkingLocationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case locationType
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let locationTypeDecoded = try containerValues.decodeIfPresent(LocationType.self, forKey: .locationType)
        locationType = locationTypeDecoded
    }
}