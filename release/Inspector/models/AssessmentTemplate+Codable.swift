// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AssessmentTemplate: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case assessmentRunCount
        case assessmentTargetArn
        case createdAt
        case durationInSeconds
        case lastAssessmentRunArn
        case name
        case rulesPackageArns
        case userAttributesForFindings
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let assessmentRunCount = assessmentRunCount {
            try encodeContainer.encode(assessmentRunCount, forKey: .assessmentRunCount)
        }
        if let assessmentTargetArn = assessmentTargetArn {
            try encodeContainer.encode(assessmentTargetArn, forKey: .assessmentTargetArn)
        }
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if durationInSeconds != 0 {
            try encodeContainer.encode(durationInSeconds, forKey: .durationInSeconds)
        }
        if let lastAssessmentRunArn = lastAssessmentRunArn {
            try encodeContainer.encode(lastAssessmentRunArn, forKey: .lastAssessmentRunArn)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let rulesPackageArns = rulesPackageArns {
            var rulesPackageArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .rulesPackageArns)
            for assessmenttemplaterulespackagearnlist0 in rulesPackageArns {
                try rulesPackageArnsContainer.encode(assessmenttemplaterulespackagearnlist0)
            }
        }
        if let userAttributesForFindings = userAttributesForFindings {
            var userAttributesForFindingsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .userAttributesForFindings)
            for userattributelist0 in userAttributesForFindings {
                try userAttributesForFindingsContainer.encode(userattributelist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let assessmentTargetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentTargetArn)
        assessmentTargetArn = assessmentTargetArnDecoded
        let durationInSecondsDecoded = try containerValues.decode(Int.self, forKey: .durationInSeconds)
        durationInSeconds = durationInSecondsDecoded
        let rulesPackageArnsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .rulesPackageArns)
        var rulesPackageArnsDecoded0:[String]? = nil
        if let rulesPackageArnsContainer = rulesPackageArnsContainer {
            rulesPackageArnsDecoded0 = [String]()
            for string0 in rulesPackageArnsContainer {
                if let string0 = string0 {
                    rulesPackageArnsDecoded0?.append(string0)
                }
            }
        }
        rulesPackageArns = rulesPackageArnsDecoded0
        let userAttributesForFindingsContainer = try containerValues.decodeIfPresent([Attribute?].self, forKey: .userAttributesForFindings)
        var userAttributesForFindingsDecoded0:[Attribute]? = nil
        if let userAttributesForFindingsContainer = userAttributesForFindingsContainer {
            userAttributesForFindingsDecoded0 = [Attribute]()
            for structure0 in userAttributesForFindingsContainer {
                if let structure0 = structure0 {
                    userAttributesForFindingsDecoded0?.append(structure0)
                }
            }
        }
        userAttributesForFindings = userAttributesForFindingsDecoded0
        let lastAssessmentRunArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastAssessmentRunArn)
        lastAssessmentRunArn = lastAssessmentRunArnDecoded
        let assessmentRunCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .assessmentRunCount)
        assessmentRunCount = assessmentRunCountDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
    }
}