// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeIAMPolicyAssignmentInput: Equatable {
    /// <p>The name of the assignment, also called a rule.</p>
    public let assignmentName: String?
    /// <p>The ID of the AWS account that contains the assignment that you want to describe.</p>
    public let awsAccountId: String?
    /// <p>The namespace that contains the assignment.</p>
    public let namespace: String?

    public init (
        assignmentName: String? = nil,
        awsAccountId: String? = nil,
        namespace: String? = nil
    )
    {
        self.assignmentName = assignmentName
        self.awsAccountId = awsAccountId
        self.namespace = namespace
    }
}

extension DescribeIAMPolicyAssignmentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeIAMPolicyAssignmentInput(assignmentName: \(String(describing: assignmentName)), awsAccountId: \(String(describing: awsAccountId)), namespace: \(String(describing: namespace)))"}
}