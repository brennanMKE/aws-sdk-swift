// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Prediction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case details
        case predictedLabel
        case predictedScores
        case predictedValue
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let details = details {
            var detailsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .details)
            for (dictKey0, detailsmap0) in details {
                try detailsContainer.encode(detailsmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let predictedLabel = predictedLabel {
            try encodeContainer.encode(predictedLabel, forKey: .predictedLabel)
        }
        if let predictedScores = predictedScores {
            var predictedScoresContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .predictedScores)
            for (dictKey0, scorevalueperlabelmap0) in predictedScores {
                try predictedScoresContainer.encode(scorevalueperlabelmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let predictedValue = predictedValue {
            try encodeContainer.encode(predictedValue, forKey: .predictedValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let predictedLabelDecoded = try containerValues.decodeIfPresent(String.self, forKey: .predictedLabel)
        predictedLabel = predictedLabelDecoded
        let predictedValueDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .predictedValue)
        predictedValue = predictedValueDecoded
        let predictedScoresContainer = try containerValues.decodeIfPresent([String: Float?].self, forKey: .predictedScores)
        var predictedScoresDecoded0: [String:Float]? = nil
        if let predictedScoresContainer = predictedScoresContainer {
            predictedScoresDecoded0 = [String:Float]()
            for (key0, scorevalue0) in predictedScoresContainer {
                if let scorevalue0 = scorevalue0 {
                    predictedScoresDecoded0?[key0] = scorevalue0
                }
            }
        }
        predictedScores = predictedScoresDecoded0
        let detailsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .details)
        var detailsDecoded0: [String:String]? = nil
        if let detailsContainer = detailsContainer {
            detailsDecoded0 = [String:String]()
            for (key0, detailsvalue0) in detailsContainer {
                if let detailsvalue0 = detailsvalue0 {
                    detailsDecoded0?[key0] = detailsvalue0
                }
            }
        }
        details = detailsDecoded0
    }
}