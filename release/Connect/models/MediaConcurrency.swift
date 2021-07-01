// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about which channels are supported, and how many contacts an agent can
///    have on a channel simultaneously.</p>
public struct MediaConcurrency: Equatable {
    /// <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    public let channel: Channel?
    /// <p>The number of contacts an agent can have on a channel simultaneously.</p>
    ///          <p>Valid Range for <code>VOICE</code>: Minimum value of 1. Maximum value of 1.</p>
    ///          <p>Valid Range for <code>CHAT</code>: Minimum value of 1. Maximum value of 5.</p>
    ///          <p>Valid Range for <code>TASK</code>: Minimum value of 1. Maximum value of 10.</p>
    public let concurrency: Int

    public init (
        channel: Channel? = nil,
        concurrency: Int = 0
    )
    {
        self.channel = channel
        self.concurrency = concurrency
    }
}

extension MediaConcurrency: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MediaConcurrency(channel: \(String(describing: channel)), concurrency: \(String(describing: concurrency)))"}
}