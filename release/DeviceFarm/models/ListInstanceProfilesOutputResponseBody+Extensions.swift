// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListInstanceProfilesOutputResponseBody: Equatable {
    public let instanceProfiles: [InstanceProfile]?
    public let nextToken: String?
}

extension ListInstanceProfilesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case instanceProfiles
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceProfilesContainer = try containerValues.decodeIfPresent([InstanceProfile?].self, forKey: .instanceProfiles)
        var instanceProfilesDecoded0:[InstanceProfile]? = nil
        if let instanceProfilesContainer = instanceProfilesContainer {
            instanceProfilesDecoded0 = [InstanceProfile]()
            for structure0 in instanceProfilesContainer {
                if let structure0 = structure0 {
                    instanceProfilesDecoded0?.append(structure0)
                }
            }
        }
        instanceProfiles = instanceProfilesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}