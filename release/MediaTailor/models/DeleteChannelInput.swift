// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteChannelInput: Equatable {
    /// <p>The identifier for the channel you are working on.</p>
    public let channelName: String?

    public init (
        channelName: String? = nil
    )
    {
        self.channelName = channelName
    }
}

extension DeleteChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteChannelInput(channelName: \(String(describing: channelName)))"}
}