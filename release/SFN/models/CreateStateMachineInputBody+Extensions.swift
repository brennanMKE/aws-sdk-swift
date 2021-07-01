// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateStateMachineInputBody: Equatable {
    public let name: String?
    public let definition: String?
    public let roleArn: String?
    public let type: StateMachineType?
    public let loggingConfiguration: LoggingConfiguration?
    public let tags: [Tag]?
    public let tracingConfiguration: TracingConfiguration?
}

extension CreateStateMachineInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case name
        case roleArn
        case tags
        case tracingConfiguration
        case type
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let definitionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .definition)
        definition = definitionDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let typeDecoded = try containerValues.decodeIfPresent(StateMachineType.self, forKey: .type)
        type = typeDecoded
        let loggingConfigurationDecoded = try containerValues.decodeIfPresent(LoggingConfiguration.self, forKey: .loggingConfiguration)
        loggingConfiguration = loggingConfigurationDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let tracingConfigurationDecoded = try containerValues.decodeIfPresent(TracingConfiguration.self, forKey: .tracingConfiguration)
        tracingConfiguration = tracingConfigurationDecoded
    }
}