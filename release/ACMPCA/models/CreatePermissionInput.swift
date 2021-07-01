// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePermissionInput: Equatable {
    /// <p>The actions that the specified AWS service principal can use. These include
    /// 				<code>IssueCertificate</code>, <code>GetCertificate</code>, and
    /// 				<code>ListPermissions</code>.</p>
    public let actions: [ActionType]?
    /// <p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the
    /// 			ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p>
    /// 		       <p>
    /// 			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    ///             </code>.
    /// 		</p>
    public let certificateAuthorityArn: String?
    /// <p>The AWS service or identity that receives the permission. At this time, the only
    /// 			valid principal is <code>acm.amazonaws.com</code>.</p>
    public let principal: String?
    /// <p>The ID of the calling account.</p>
    public let sourceAccount: String?

    public init (
        actions: [ActionType]? = nil,
        certificateAuthorityArn: String? = nil,
        principal: String? = nil,
        sourceAccount: String? = nil
    )
    {
        self.actions = actions
        self.certificateAuthorityArn = certificateAuthorityArn
        self.principal = principal
        self.sourceAccount = sourceAccount
    }
}

extension CreatePermissionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePermissionInput(actions: \(String(describing: actions)), certificateAuthorityArn: \(String(describing: certificateAuthorityArn)), principal: \(String(describing: principal)), sourceAccount: \(String(describing: sourceAccount)))"}
}