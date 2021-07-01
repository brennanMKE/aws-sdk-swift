// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension QualificationType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case answerKey = "AnswerKey"
        case autoGranted = "AutoGranted"
        case autoGrantedValue = "AutoGrantedValue"
        case creationTime = "CreationTime"
        case description = "Description"
        case isRequestable = "IsRequestable"
        case keywords = "Keywords"
        case name = "Name"
        case qualificationTypeId = "QualificationTypeId"
        case qualificationTypeStatus = "QualificationTypeStatus"
        case retryDelayInSeconds = "RetryDelayInSeconds"
        case test = "Test"
        case testDurationInSeconds = "TestDurationInSeconds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let answerKey = answerKey {
            try encodeContainer.encode(answerKey, forKey: .answerKey)
        }
        if let autoGranted = autoGranted {
            try encodeContainer.encode(autoGranted, forKey: .autoGranted)
        }
        if let autoGrantedValue = autoGrantedValue {
            try encodeContainer.encode(autoGrantedValue, forKey: .autoGrantedValue)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let isRequestable = isRequestable {
            try encodeContainer.encode(isRequestable, forKey: .isRequestable)
        }
        if let keywords = keywords {
            try encodeContainer.encode(keywords, forKey: .keywords)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let qualificationTypeId = qualificationTypeId {
            try encodeContainer.encode(qualificationTypeId, forKey: .qualificationTypeId)
        }
        if let qualificationTypeStatus = qualificationTypeStatus {
            try encodeContainer.encode(qualificationTypeStatus.rawValue, forKey: .qualificationTypeStatus)
        }
        if let retryDelayInSeconds = retryDelayInSeconds {
            try encodeContainer.encode(retryDelayInSeconds, forKey: .retryDelayInSeconds)
        }
        if let test = test {
            try encodeContainer.encode(test, forKey: .test)
        }
        if let testDurationInSeconds = testDurationInSeconds {
            try encodeContainer.encode(testDurationInSeconds, forKey: .testDurationInSeconds)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let qualificationTypeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .qualificationTypeId)
        qualificationTypeId = qualificationTypeIdDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let keywordsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keywords)
        keywords = keywordsDecoded
        let qualificationTypeStatusDecoded = try containerValues.decodeIfPresent(QualificationTypeStatus.self, forKey: .qualificationTypeStatus)
        qualificationTypeStatus = qualificationTypeStatusDecoded
        let testDecoded = try containerValues.decodeIfPresent(String.self, forKey: .test)
        test = testDecoded
        let testDurationInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .testDurationInSeconds)
        testDurationInSeconds = testDurationInSecondsDecoded
        let answerKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .answerKey)
        answerKey = answerKeyDecoded
        let retryDelayInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .retryDelayInSeconds)
        retryDelayInSeconds = retryDelayInSecondsDecoded
        let isRequestableDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .isRequestable)
        isRequestable = isRequestableDecoded
        let autoGrantedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .autoGranted)
        autoGranted = autoGrantedDecoded
        let autoGrantedValueDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .autoGrantedValue)
        autoGrantedValue = autoGrantedValueDecoded
    }
}