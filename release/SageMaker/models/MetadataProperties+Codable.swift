// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MetadataProperties: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case commitId = "CommitId"
        case generatedBy = "GeneratedBy"
        case projectId = "ProjectId"
        case repository = "Repository"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let commitId = commitId {
            try encodeContainer.encode(commitId, forKey: .commitId)
        }
        if let generatedBy = generatedBy {
            try encodeContainer.encode(generatedBy, forKey: .generatedBy)
        }
        if let projectId = projectId {
            try encodeContainer.encode(projectId, forKey: .projectId)
        }
        if let repository = repository {
            try encodeContainer.encode(repository, forKey: .repository)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let commitIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .commitId)
        commitId = commitIdDecoded
        let repositoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .repository)
        repository = repositoryDecoded
        let generatedByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .generatedBy)
        generatedBy = generatedByDecoded
        let projectIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectId)
        projectId = projectIdDecoded
    }
}