// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CloudFormationStackRecord: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case createdAt
        case destinationInfo
        case location
        case name
        case resourceType
        case sourceInfo
        case state
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let destinationInfo = destinationInfo {
            try encodeContainer.encode(destinationInfo, forKey: .destinationInfo)
        }
        if let location = location {
            try encodeContainer.encode(location, forKey: .location)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let resourceType = resourceType {
            try encodeContainer.encode(resourceType.rawValue, forKey: .resourceType)
        }
        if let sourceInfo = sourceInfo {
            var sourceInfoContainer = encodeContainer.nestedUnkeyedContainer(forKey: .sourceInfo)
            for cloudformationstackrecordsourceinfolist0 in sourceInfo {
                try sourceInfoContainer.encode(cloudformationstackrecordsourceinfolist0)
            }
        }
        if let state = state {
            try encodeContainer.encode(state.rawValue, forKey: .state)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let locationDecoded = try containerValues.decodeIfPresent(ResourceLocation.self, forKey: .location)
        location = locationDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(ResourceType.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let stateDecoded = try containerValues.decodeIfPresent(RecordState.self, forKey: .state)
        state = stateDecoded
        let sourceInfoContainer = try containerValues.decodeIfPresent([CloudFormationStackRecordSourceInfo?].self, forKey: .sourceInfo)
        var sourceInfoDecoded0:[CloudFormationStackRecordSourceInfo]? = nil
        if let sourceInfoContainer = sourceInfoContainer {
            sourceInfoDecoded0 = [CloudFormationStackRecordSourceInfo]()
            for structure0 in sourceInfoContainer {
                if let structure0 = structure0 {
                    sourceInfoDecoded0?.append(structure0)
                }
            }
        }
        sourceInfo = sourceInfoDecoded0
        let destinationInfoDecoded = try containerValues.decodeIfPresent(DestinationInfo.self, forKey: .destinationInfo)
        destinationInfo = destinationInfoDecoded
    }
}