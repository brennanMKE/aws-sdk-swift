// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateTrialComponentInputBody: Equatable {
    public let trialComponentName: String?
    public let displayName: String?
    public let status: TrialComponentStatus?
    public let startTime: Date?
    public let endTime: Date?
    public let parameters: [String:TrialComponentParameterValue]?
    public let parametersToRemove: [String]?
    public let inputArtifacts: [String:TrialComponentArtifact]?
    public let inputArtifactsToRemove: [String]?
    public let outputArtifacts: [String:TrialComponentArtifact]?
    public let outputArtifactsToRemove: [String]?
}

extension UpdateTrialComponentInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case displayName = "DisplayName"
        case endTime = "EndTime"
        case inputArtifacts = "InputArtifacts"
        case inputArtifactsToRemove = "InputArtifactsToRemove"
        case outputArtifacts = "OutputArtifacts"
        case outputArtifactsToRemove = "OutputArtifactsToRemove"
        case parameters = "Parameters"
        case parametersToRemove = "ParametersToRemove"
        case startTime = "StartTime"
        case status = "Status"
        case trialComponentName = "TrialComponentName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trialComponentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .trialComponentName)
        trialComponentName = trialComponentNameDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let statusDecoded = try containerValues.decodeIfPresent(TrialComponentStatus.self, forKey: .status)
        status = statusDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
        let parametersContainer = try containerValues.decodeIfPresent([String: TrialComponentParameterValue?].self, forKey: .parameters)
        var parametersDecoded0: [String:TrialComponentParameterValue]? = nil
        if let parametersContainer = parametersContainer {
            parametersDecoded0 = [String:TrialComponentParameterValue]()
            for (key0, trialcomponentparametervalue0) in parametersContainer {
                if let trialcomponentparametervalue0 = trialcomponentparametervalue0 {
                    parametersDecoded0?[key0] = trialcomponentparametervalue0
                }
            }
        }
        parameters = parametersDecoded0
        let parametersToRemoveContainer = try containerValues.decodeIfPresent([String?].self, forKey: .parametersToRemove)
        var parametersToRemoveDecoded0:[String]? = nil
        if let parametersToRemoveContainer = parametersToRemoveContainer {
            parametersToRemoveDecoded0 = [String]()
            for string0 in parametersToRemoveContainer {
                if let string0 = string0 {
                    parametersToRemoveDecoded0?.append(string0)
                }
            }
        }
        parametersToRemove = parametersToRemoveDecoded0
        let inputArtifactsContainer = try containerValues.decodeIfPresent([String: TrialComponentArtifact?].self, forKey: .inputArtifacts)
        var inputArtifactsDecoded0: [String:TrialComponentArtifact]? = nil
        if let inputArtifactsContainer = inputArtifactsContainer {
            inputArtifactsDecoded0 = [String:TrialComponentArtifact]()
            for (key0, trialcomponentartifact0) in inputArtifactsContainer {
                if let trialcomponentartifact0 = trialcomponentartifact0 {
                    inputArtifactsDecoded0?[key0] = trialcomponentartifact0
                }
            }
        }
        inputArtifacts = inputArtifactsDecoded0
        let inputArtifactsToRemoveContainer = try containerValues.decodeIfPresent([String?].self, forKey: .inputArtifactsToRemove)
        var inputArtifactsToRemoveDecoded0:[String]? = nil
        if let inputArtifactsToRemoveContainer = inputArtifactsToRemoveContainer {
            inputArtifactsToRemoveDecoded0 = [String]()
            for string0 in inputArtifactsToRemoveContainer {
                if let string0 = string0 {
                    inputArtifactsToRemoveDecoded0?.append(string0)
                }
            }
        }
        inputArtifactsToRemove = inputArtifactsToRemoveDecoded0
        let outputArtifactsContainer = try containerValues.decodeIfPresent([String: TrialComponentArtifact?].self, forKey: .outputArtifacts)
        var outputArtifactsDecoded0: [String:TrialComponentArtifact]? = nil
        if let outputArtifactsContainer = outputArtifactsContainer {
            outputArtifactsDecoded0 = [String:TrialComponentArtifact]()
            for (key0, trialcomponentartifact0) in outputArtifactsContainer {
                if let trialcomponentartifact0 = trialcomponentartifact0 {
                    outputArtifactsDecoded0?[key0] = trialcomponentartifact0
                }
            }
        }
        outputArtifacts = outputArtifactsDecoded0
        let outputArtifactsToRemoveContainer = try containerValues.decodeIfPresent([String?].self, forKey: .outputArtifactsToRemove)
        var outputArtifactsToRemoveDecoded0:[String]? = nil
        if let outputArtifactsToRemoveContainer = outputArtifactsToRemoveContainer {
            outputArtifactsToRemoveDecoded0 = [String]()
            for string0 in outputArtifactsToRemoveContainer {
                if let string0 = string0 {
                    outputArtifactsToRemoveDecoded0?.append(string0)
                }
            }
        }
        outputArtifactsToRemove = outputArtifactsToRemoveDecoded0
    }
}