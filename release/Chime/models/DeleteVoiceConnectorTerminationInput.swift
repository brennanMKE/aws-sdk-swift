// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteVoiceConnectorTerminationInput: Equatable {
    /// <p>The Amazon Chime Voice Connector ID.</p>
    public let voiceConnectorId: String?

    public init (
        voiceConnectorId: String? = nil
    )
    {
        self.voiceConnectorId = voiceConnectorId
    }
}

extension DeleteVoiceConnectorTerminationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteVoiceConnectorTerminationInput(voiceConnectorId: \(String(describing: voiceConnectorId)))"}
}