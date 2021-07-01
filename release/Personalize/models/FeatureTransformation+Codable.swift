// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FeatureTransformation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationDateTime
        case defaultParameters
        case featureTransformationArn
        case lastUpdatedDateTime
        case name
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationDateTime = creationDateTime {
            try encodeContainer.encode(creationDateTime.timeIntervalSince1970, forKey: .creationDateTime)
        }
        if let defaultParameters = defaultParameters {
            var defaultParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .defaultParameters)
            for (dictKey0, featurizationparameters0) in defaultParameters {
                try defaultParametersContainer.encode(featurizationparameters0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let featureTransformationArn = featureTransformationArn {
            try encodeContainer.encode(featureTransformationArn, forKey: .featureTransformationArn)
        }
        if let lastUpdatedDateTime = lastUpdatedDateTime {
            try encodeContainer.encode(lastUpdatedDateTime.timeIntervalSince1970, forKey: .lastUpdatedDateTime)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let featureTransformationArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .featureTransformationArn)
        featureTransformationArn = featureTransformationArnDecoded
        let defaultParametersContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .defaultParameters)
        var defaultParametersDecoded0: [String:String]? = nil
        if let defaultParametersContainer = defaultParametersContainer {
            defaultParametersDecoded0 = [String:String]()
            for (key0, parametervalue0) in defaultParametersContainer {
                if let parametervalue0 = parametervalue0 {
                    defaultParametersDecoded0?[key0] = parametervalue0
                }
            }
        }
        defaultParameters = defaultParametersDecoded0
        let creationDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDateTime)
        creationDateTime = creationDateTimeDecoded
        let lastUpdatedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDateTime)
        lastUpdatedDateTime = lastUpdatedDateTimeDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}