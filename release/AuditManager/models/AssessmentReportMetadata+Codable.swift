// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AssessmentReportMetadata: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentId
        case assessmentName
        case author
        case creationTime
        case description
        case id
        case name
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentId = assessmentId {
            try encodeContainer.encode(assessmentId, forKey: .assessmentId)
        }
        if let assessmentName = assessmentName {
            try encodeContainer.encode(assessmentName, forKey: .assessmentName)
        }
        if let author = author {
            try encodeContainer.encode(author, forKey: .author)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let assessmentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentId)
        assessmentId = assessmentIdDecoded
        let assessmentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentName)
        assessmentName = assessmentNameDecoded
        let authorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .author)
        author = authorDecoded
        let statusDecoded = try containerValues.decodeIfPresent(AssessmentReportStatus.self, forKey: .status)
        status = statusDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
    }
}