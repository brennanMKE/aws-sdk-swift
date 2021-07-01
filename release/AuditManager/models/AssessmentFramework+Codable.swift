// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AssessmentFramework: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case controlSets
        case id
        case metadata
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let controlSets = controlSets {
            var controlSetsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .controlSets)
            for assessmentcontrolsets0 in controlSets {
                try controlSetsContainer.encode(assessmentcontrolsets0)
            }
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let metadata = metadata {
            try encodeContainer.encode(metadata, forKey: .metadata)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let metadataDecoded = try containerValues.decodeIfPresent(FrameworkMetadata.self, forKey: .metadata)
        metadata = metadataDecoded
        let controlSetsContainer = try containerValues.decodeIfPresent([AssessmentControlSet?].self, forKey: .controlSets)
        var controlSetsDecoded0:[AssessmentControlSet]? = nil
        if let controlSetsContainer = controlSetsContainer {
            controlSetsDecoded0 = [AssessmentControlSet]()
            for structure0 in controlSetsContainer {
                if let structure0 = structure0 {
                    controlSetsDecoded0?.append(structure0)
                }
            }
        }
        controlSets = controlSetsDecoded0
    }
}