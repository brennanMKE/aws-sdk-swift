// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a successful <a>AssumeRole</a> request, including
///       temporary AWS credentials that can be used to make AWS requests. </p>
public struct AssumeRoleOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you
    ///          can use to refer to the resulting temporary security credentials. For example, you can
    ///          reference these credentials as a principal in a resource-based policy by using the ARN or
    ///          assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified
    ///          when you called <code>AssumeRole</code>. </p>
    public let assumedRoleUser: AssumedRoleUser?
    /// <p>The temporary security credentials, which include an access key ID, a secret access key,
    ///          and a security (or session) token.</p>
    ///          <note>
    ///             <p>The size of the security token that STS API operations return is not fixed. We
    ///         strongly recommend that you make no assumptions about the maximum size.</p>
    ///          </note>
    public let credentials: Credentials?
    /// <p>A percentage value that indicates the packed size of the session policies and session
    ///       tags combined passed in the request. The request fails if the packed size is greater than 100 percent,
    ///       which means the policies and tags exceeded the allowed space.</p>
    public let packedPolicySize: Int?
    /// <p>The source identity specified by the principal that is calling the
    ///             <code>AssumeRole</code> operation.</p>
    ///          <p>You can require users to specify a source identity when they assume a role. You do this
    ///          by using the <code>sts:SourceIdentity</code> condition key in a role trust policy. You can
    ///          use source identity information in AWS CloudTrail logs to determine who took actions with a role.
    ///          You can use the <code>aws:SourceIdentity</code> condition key to further control access to
    ///          AWS resources based on the value of source identity. For more information about using
    ///          source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    ///             actions taken with assumed roles</a> in the
    ///          <i>IAM User Guide</i>.</p>
    ///          <p>The regex used to validate this parameter is a string of characters consisting of upper-
    ///          and lower-case alphanumeric characters with no spaces. You can also include underscores or
    ///          any of the following characters: =,.@-</p>
    public let sourceIdentity: String?

    public init (
        assumedRoleUser: AssumedRoleUser? = nil,
        credentials: Credentials? = nil,
        packedPolicySize: Int? = nil,
        sourceIdentity: String? = nil
    )
    {
        self.assumedRoleUser = assumedRoleUser
        self.credentials = credentials
        self.packedPolicySize = packedPolicySize
        self.sourceIdentity = sourceIdentity
    }
}

extension AssumeRoleOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssumeRoleOutputResponse(assumedRoleUser: \(String(describing: assumedRoleUser)), credentials: \(String(describing: credentials)), packedPolicySize: \(String(describing: packedPolicySize)), sourceIdentity: \(String(describing: sourceIdentity)))"}
}