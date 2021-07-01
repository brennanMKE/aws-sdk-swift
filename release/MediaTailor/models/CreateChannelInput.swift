// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateChannelInput: Equatable {
    /// <p>The identifier for the channel you are working on.</p>
    public let channelName: String?
    /// <p>The channel's output properties.</p>
    public let outputs: [RequestOutputItem]?
    /// <p>The type of playback mode for this channel. The only supported value is LOOP.</p>
    public let playbackMode: PlaybackMode?
    /// <p>The tags to assign to the channel.</p>
    public let tags: [String:String]?

    public init (
        channelName: String? = nil,
        outputs: [RequestOutputItem]? = nil,
        playbackMode: PlaybackMode? = nil,
        tags: [String:String]? = nil
    )
    {
        self.channelName = channelName
        self.outputs = outputs
        self.playbackMode = playbackMode
        self.tags = tags
    }
}

extension CreateChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateChannelInput(channelName: \(String(describing: channelName)), outputs: \(String(describing: outputs)), playbackMode: \(String(describing: playbackMode)), tags: \(String(describing: tags)))"}
}