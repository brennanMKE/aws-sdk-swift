// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConfigRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configRuleArn = "ConfigRuleArn"
        case configRuleId = "ConfigRuleId"
        case configRuleName = "ConfigRuleName"
        case configRuleState = "ConfigRuleState"
        case createdBy = "CreatedBy"
        case description = "Description"
        case inputParameters = "InputParameters"
        case maximumExecutionFrequency = "MaximumExecutionFrequency"
        case scope = "Scope"
        case source = "Source"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configRuleArn = configRuleArn {
            try encodeContainer.encode(configRuleArn, forKey: .configRuleArn)
        }
        if let configRuleId = configRuleId {
            try encodeContainer.encode(configRuleId, forKey: .configRuleId)
        }
        if let configRuleName = configRuleName {
            try encodeContainer.encode(configRuleName, forKey: .configRuleName)
        }
        if let configRuleState = configRuleState {
            try encodeContainer.encode(configRuleState.rawValue, forKey: .configRuleState)
        }
        if let createdBy = createdBy {
            try encodeContainer.encode(createdBy, forKey: .createdBy)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let inputParameters = inputParameters {
            try encodeContainer.encode(inputParameters, forKey: .inputParameters)
        }
        if let maximumExecutionFrequency = maximumExecutionFrequency {
            try encodeContainer.encode(maximumExecutionFrequency.rawValue, forKey: .maximumExecutionFrequency)
        }
        if let scope = scope {
            try encodeContainer.encode(scope, forKey: .scope)
        }
        if let source = source {
            try encodeContainer.encode(source, forKey: .source)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configRuleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configRuleName)
        configRuleName = configRuleNameDecoded
        let configRuleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configRuleArn)
        configRuleArn = configRuleArnDecoded
        let configRuleIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configRuleId)
        configRuleId = configRuleIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let scopeDecoded = try containerValues.decodeIfPresent(Scope.self, forKey: .scope)
        scope = scopeDecoded
        let sourceDecoded = try containerValues.decodeIfPresent(Source.self, forKey: .source)
        source = sourceDecoded
        let inputParametersDecoded = try containerValues.decodeIfPresent(String.self, forKey: .inputParameters)
        inputParameters = inputParametersDecoded
        let maximumExecutionFrequencyDecoded = try containerValues.decodeIfPresent(MaximumExecutionFrequency.self, forKey: .maximumExecutionFrequency)
        maximumExecutionFrequency = maximumExecutionFrequencyDecoded
        let configRuleStateDecoded = try containerValues.decodeIfPresent(ConfigRuleState.self, forKey: .configRuleState)
        configRuleState = configRuleStateDecoded
        let createdByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdBy)
        createdBy = createdByDecoded
    }
}