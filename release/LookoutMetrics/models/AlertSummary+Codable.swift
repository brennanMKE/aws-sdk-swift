// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AlertSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case alertArn = "AlertArn"
        case alertName = "AlertName"
        case alertSensitivityThreshold = "AlertSensitivityThreshold"
        case alertStatus = "AlertStatus"
        case alertType = "AlertType"
        case anomalyDetectorArn = "AnomalyDetectorArn"
        case creationTime = "CreationTime"
        case lastModificationTime = "LastModificationTime"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let alertArn = alertArn {
            try encodeContainer.encode(alertArn, forKey: .alertArn)
        }
        if let alertName = alertName {
            try encodeContainer.encode(alertName, forKey: .alertName)
        }
        if alertSensitivityThreshold != 0 {
            try encodeContainer.encode(alertSensitivityThreshold, forKey: .alertSensitivityThreshold)
        }
        if let alertStatus = alertStatus {
            try encodeContainer.encode(alertStatus.rawValue, forKey: .alertStatus)
        }
        if let alertType = alertType {
            try encodeContainer.encode(alertType.rawValue, forKey: .alertType)
        }
        if let anomalyDetectorArn = anomalyDetectorArn {
            try encodeContainer.encode(anomalyDetectorArn, forKey: .anomalyDetectorArn)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let lastModificationTime = lastModificationTime {
            try encodeContainer.encode(lastModificationTime.timeIntervalSince1970, forKey: .lastModificationTime)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let alertArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alertArn)
        alertArn = alertArnDecoded
        let anomalyDetectorArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .anomalyDetectorArn)
        anomalyDetectorArn = anomalyDetectorArnDecoded
        let alertNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alertName)
        alertName = alertNameDecoded
        let alertSensitivityThresholdDecoded = try containerValues.decode(Int.self, forKey: .alertSensitivityThreshold)
        alertSensitivityThreshold = alertSensitivityThresholdDecoded
        let alertTypeDecoded = try containerValues.decodeIfPresent(AlertType.self, forKey: .alertType)
        alertType = alertTypeDecoded
        let alertStatusDecoded = try containerValues.decodeIfPresent(AlertStatus.self, forKey: .alertStatus)
        alertStatus = alertStatusDecoded
        let lastModificationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModificationTime)
        lastModificationTime = lastModificationTimeDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                if let tagvalue0 = tagvalue0 {
                    tagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        tags = tagsDecoded0
    }
}