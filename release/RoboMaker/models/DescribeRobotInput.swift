// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeRobotInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the robot to be described.</p>
    public let robot: String?

    public init (
        robot: String? = nil
    )
    {
        self.robot = robot
    }
}

extension DescribeRobotInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeRobotInput(robot: \(String(describing: robot)))"}
}