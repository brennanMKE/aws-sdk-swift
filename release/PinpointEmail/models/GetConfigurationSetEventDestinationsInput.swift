// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to obtain information about the event destinations for a configuration
///             set.</p>
public struct GetConfigurationSetEventDestinationsInput: Equatable {
    /// <p>The name of the configuration set that contains the event destination.</p>
    public let configurationSetName: String?

    public init (
        configurationSetName: String? = nil
    )
    {
        self.configurationSetName = configurationSetName
    }
}

extension GetConfigurationSetEventDestinationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetConfigurationSetEventDestinationsInput(configurationSetName: \(String(describing: configurationSetName)))"}
}