// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateRobotApplicationInput: Equatable {
    /// <p>The application information for the robot application.</p>
    public let application: String?
    /// <p>The revision id for the robot application.</p>
    public let currentRevisionId: String?
    /// <p>The robot software suite (ROS distribution) used by the robot application.</p>
    public let robotSoftwareSuite: RobotSoftwareSuite?
    /// <p>The sources of the robot application.</p>
    public let sources: [SourceConfig]?

    public init (
        application: String? = nil,
        currentRevisionId: String? = nil,
        robotSoftwareSuite: RobotSoftwareSuite? = nil,
        sources: [SourceConfig]? = nil
    )
    {
        self.application = application
        self.currentRevisionId = currentRevisionId
        self.robotSoftwareSuite = robotSoftwareSuite
        self.sources = sources
    }
}

extension UpdateRobotApplicationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateRobotApplicationInput(application: \(String(describing: application)), currentRevisionId: \(String(describing: currentRevisionId)), robotSoftwareSuite: \(String(describing: robotSoftwareSuite)), sources: \(String(describing: sources)))"}
}