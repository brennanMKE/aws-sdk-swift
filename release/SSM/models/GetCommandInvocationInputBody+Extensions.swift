// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetCommandInvocationInputBody: Equatable {
    public let commandId: String?
    public let instanceId: String?
    public let pluginName: String?
}

extension GetCommandInvocationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case commandId = "CommandId"
        case instanceId = "InstanceId"
        case pluginName = "PluginName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let commandIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .commandId)
        commandId = commandIdDecoded
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let pluginNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pluginName)
        pluginName = pluginNameDecoded
    }
}