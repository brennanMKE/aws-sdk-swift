// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeChannelModeratorInput: Equatable {
    /// <p>The ARN of the channel.</p>
    public let channelArn: String?
    /// <p>The ARN of the channel moderator.</p>
    public let channelModeratorArn: String?
    /// <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    public let chimeBearer: String?

    public init (
        channelArn: String? = nil,
        channelModeratorArn: String? = nil,
        chimeBearer: String? = nil
    )
    {
        self.channelArn = channelArn
        self.channelModeratorArn = channelModeratorArn
        self.chimeBearer = chimeBearer
    }
}

extension DescribeChannelModeratorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeChannelModeratorInput(channelArn: \(String(describing: channelArn)), channelModeratorArn: \(String(describing: channelModeratorArn)), chimeBearer: \(String(describing: chimeBearer)))"}
}