// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateLaunchTemplateInput: Equatable {
    /// <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the
    ///             request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
    ///                 Idempotency</a>.</p>
    ///         <p>Constraint: Maximum 128 ASCII characters.</p>
    public let clientToken: String?
    /// <p>Checks whether you have the required permissions for the action, without actually
    ///             making the request, and provides an error response. If you have the required
    ///             permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is
    ///                 <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The information for the launch template.</p>
    public let launchTemplateData: RequestLaunchTemplateData?
    /// <p>A name for the launch template.</p>
    public let launchTemplateName: String?
    /// <p>The tags to apply to the launch template during creation.</p>
    public let tagSpecifications: [TagSpecification]?
    /// <p>A description for the first version of the launch template.</p>
    public let versionDescription: String?

    public init (
        clientToken: String? = nil,
        dryRun: Bool = false,
        launchTemplateData: RequestLaunchTemplateData? = nil,
        launchTemplateName: String? = nil,
        tagSpecifications: [TagSpecification]? = nil,
        versionDescription: String? = nil
    )
    {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.launchTemplateData = launchTemplateData
        self.launchTemplateName = launchTemplateName
        self.tagSpecifications = tagSpecifications
        self.versionDescription = versionDescription
    }
}

extension CreateLaunchTemplateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateLaunchTemplateInput(clientToken: \(String(describing: clientToken)), dryRun: \(String(describing: dryRun)), launchTemplateData: \(String(describing: launchTemplateData)), launchTemplateName: \(String(describing: launchTemplateName)), tagSpecifications: \(String(describing: tagSpecifications)), versionDescription: \(String(describing: versionDescription)))"}
}