// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p/>
public struct UpdateConfigInput: Equatable {
    /// <p>Parameters of a <code>Config</code>.</p>
    public let configData: ConfigTypeData?
    /// <p>UUID of a <code>Config</code>.</p>
    public let configId: String?
    /// <p>Type of a <code>Config</code>.</p>
    public let configType: ConfigCapabilityType?
    /// <p>Name of a <code>Config</code>.</p>
    public let name: String?

    public init (
        configData: ConfigTypeData? = nil,
        configId: String? = nil,
        configType: ConfigCapabilityType? = nil,
        name: String? = nil
    )
    {
        self.configData = configData
        self.configId = configId
        self.configType = configType
        self.name = name
    }
}

extension UpdateConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateConfigInput(configData: \(String(describing: configData)), configId: \(String(describing: configId)), configType: \(String(describing: configType)), name: \(String(describing: name)))"}
}