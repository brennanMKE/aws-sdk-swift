// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateFlowInputBody: Equatable {
    public let flowName: String?
    public let description: String?
    public let triggerConfig: TriggerConfig?
    public let sourceFlowConfig: SourceFlowConfig?
    public let destinationFlowConfigList: [DestinationFlowConfig]?
    public let tasks: [Task]?
}

extension UpdateFlowInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description
        case destinationFlowConfigList
        case flowName
        case sourceFlowConfig
        case tasks
        case triggerConfig
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowName)
        flowName = flowNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let triggerConfigDecoded = try containerValues.decodeIfPresent(TriggerConfig.self, forKey: .triggerConfig)
        triggerConfig = triggerConfigDecoded
        let sourceFlowConfigDecoded = try containerValues.decodeIfPresent(SourceFlowConfig.self, forKey: .sourceFlowConfig)
        sourceFlowConfig = sourceFlowConfigDecoded
        let destinationFlowConfigListContainer = try containerValues.decodeIfPresent([DestinationFlowConfig?].self, forKey: .destinationFlowConfigList)
        var destinationFlowConfigListDecoded0:[DestinationFlowConfig]? = nil
        if let destinationFlowConfigListContainer = destinationFlowConfigListContainer {
            destinationFlowConfigListDecoded0 = [DestinationFlowConfig]()
            for structure0 in destinationFlowConfigListContainer {
                if let structure0 = structure0 {
                    destinationFlowConfigListDecoded0?.append(structure0)
                }
            }
        }
        destinationFlowConfigList = destinationFlowConfigListDecoded0
        let tasksContainer = try containerValues.decodeIfPresent([Task?].self, forKey: .tasks)
        var tasksDecoded0:[Task]? = nil
        if let tasksContainer = tasksContainer {
            tasksDecoded0 = [Task]()
            for structure0 in tasksContainer {
                if let structure0 = structure0 {
                    tasksDecoded0?.append(structure0)
                }
            }
        }
        tasks = tasksDecoded0
    }
}