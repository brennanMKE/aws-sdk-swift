// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StreamingSession: Equatable {
    /// <p>The ARN of the resource.</p>
    public let arn: String?
    /// <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    public let createdAt: Date?
    /// <p>The user ID of the user that created the streaming session.</p>
    public let createdBy: String?
    /// <p>The EC2 Instance type used for the streaming session.</p>
    public let ec2InstanceType: String?
    /// <p>The ID of the launch profile used to control access from the streaming session.</p>
    public let launchProfileId: String?
    /// <p>The session ID.</p>
    public let sessionId: String?
    /// <p>The current state.</p>
    public let state: StreamingSessionState?
    /// <p>The status code.</p>
    public let statusCode: StreamingSessionStatusCode?
    /// <p>The status message for the streaming session.</p>
    public let statusMessage: String?
    /// <p>The ID of the streaming image.</p>
    public let streamingImageId: String?
    /// <p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>
    public let tags: [String:String]?
    /// <p>The time the streaming session will automatically terminate if not terminated by the user.</p>
    public let terminateAt: Date?
    /// <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    public let updatedAt: Date?
    /// <p>The user ID of the user that most recently updated the resource.</p>
    public let updatedBy: String?

    public init (
        arn: String? = nil,
        createdAt: Date? = nil,
        createdBy: String? = nil,
        ec2InstanceType: String? = nil,
        launchProfileId: String? = nil,
        sessionId: String? = nil,
        state: StreamingSessionState? = nil,
        statusCode: StreamingSessionStatusCode? = nil,
        statusMessage: String? = nil,
        streamingImageId: String? = nil,
        tags: [String:String]? = nil,
        terminateAt: Date? = nil,
        updatedAt: Date? = nil,
        updatedBy: String? = nil
    )
    {
        self.arn = arn
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.ec2InstanceType = ec2InstanceType
        self.launchProfileId = launchProfileId
        self.sessionId = sessionId
        self.state = state
        self.statusCode = statusCode
        self.statusMessage = statusMessage
        self.streamingImageId = streamingImageId
        self.tags = tags
        self.terminateAt = terminateAt
        self.updatedAt = updatedAt
        self.updatedBy = updatedBy
    }
}

extension StreamingSession: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StreamingSession(arn: \(String(describing: arn)), createdAt: \(String(describing: createdAt)), createdBy: \(String(describing: createdBy)), ec2InstanceType: \(String(describing: ec2InstanceType)), launchProfileId: \(String(describing: launchProfileId)), sessionId: \(String(describing: sessionId)), state: \(String(describing: state)), statusCode: \(String(describing: statusCode)), statusMessage: \(String(describing: statusMessage)), streamingImageId: \(String(describing: streamingImageId)), tags: \(String(describing: tags)), terminateAt: \(String(describing: terminateAt)), updatedAt: \(String(describing: updatedAt)), updatedBy: \(String(describing: updatedBy)))"}
}