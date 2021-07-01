// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about a build project.</p>
public struct Project: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the build project.</p>
    public let arn: String?
    /// <p>Information about the build output artifacts for the build project.</p>
    public let artifacts: ProjectArtifacts?
    /// <p>Information about the build badge for the build project.</p>
    public let badge: ProjectBadge?
    /// <p>A <a>ProjectBuildBatchConfig</a>
    ///  object that defines the batch build
    ///             options for the project.</p>
    public let buildBatchConfig: ProjectBuildBatchConfig?
    /// <p>Information about the cache for the build project.</p>
    public let cache: ProjectCache?
    /// <p>The maximum number of concurrent builds that are allowed for this project.</p>
    ///          <p>New builds are only started if the current number of builds is less than or equal to this limit.
    ///   If the current build count meets this limit, new builds are throttled and are not run.</p>
    public let concurrentBuildLimit: Int?
    /// <p>When the build project was created, expressed in Unix time format.</p>
    public let created: Date?
    /// <p>A description that makes the build project easy to identify.</p>
    public let description: String?
    /// <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output
    ///       artifacts.</p>
    ///          <note>
    ///             <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    ///         service role has permission to that key. </p>
    ///          </note>
    ///          <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    ///         the format <code>alias/<alias-name></code>).
    ///     </p>
    public let encryptionKey: String?
    /// <p>Information about the build environment for this build project.</p>
    public let environment: ProjectEnvironment?
    /// <p>
    ///       An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    ///       specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    ///       <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    ///   </p>
    public let fileSystemLocations: [ProjectFileSystemLocation]?
    /// <p>When the build project's settings were last modified, expressed in Unix time
    ///       format.</p>
    public let lastModified: Date?
    /// <p>Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an
    ///       S3 bucket, or both. </p>
    public let logsConfig: LogsConfig?
    /// <p>The name of the build project.</p>
    public let name: String?
    /// <p>The number of minutes a build is allowed to be queued before it times out. </p>
    public let queuedTimeoutInMinutes: Int?
    /// <p>An array of <code>ProjectArtifacts</code> objects. </p>
    public let secondaryArtifacts: [ProjectArtifacts]?
    /// <p>An array of <code>ProjectSourceVersion</code> objects. If
    ///       <code>secondarySourceVersions</code> is specified at the build level, then they take
    ///       over these <code>secondarySourceVersions</code> (at the project level). </p>
    public let secondarySourceVersions: [ProjectSourceVersion]?
    /// <p>An array of <code>ProjectSource</code> objects. </p>
    public let secondarySources: [ProjectSource]?
    /// <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services
    ///       on behalf of the AWS account.</p>
    public let serviceRole: String?
    /// <p>Information about the build input source code for this build project.</p>
    public let source: ProjectSource?
    /// <p>A version of the build input to be built for this project. If not specified, the
    ///       latest version is used. If specified, it must be one of:</p>
    ///          <ul>
    ///             <li>
    ///                <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
    ///             </li>
    ///             <li>
    ///                <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    ///           corresponds to the version of the source code you want to build. If a pull
    ///           request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    ///           (for example <code>pr/25</code>). If a branch name is specified, the branch's
    ///           HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    ///           used.</p>
    ///             </li>
    ///             <li>
    ///                <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    ///           version of the source code you want to build. If a branch name is specified, the
    ///           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    ///           commit ID is used.</p>
    ///             </li>
    ///             <li>
    ///                <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    ///           file to use.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If <code>sourceVersion</code> is specified at the build level, then that version
    ///       takes precedence over this <code>sourceVersion</code> (at the project level). </p>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    ///       with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>.
    ///     </p>
    public let sourceVersion: String?
    /// <p>A list of tag key and value pairs associated with this build project.</p>
    ///          <p>These tags are available for use by AWS services that support AWS CodeBuild build project
    ///       tags.</p>
    public let tags: [Tag]?
    /// <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any
    ///       related build that did not get marked as completed. The default is 60 minutes.</p>
    public let timeoutInMinutes: Int?
    /// <p>Information about the VPC configuration that AWS CodeBuild accesses.</p>
    public let vpcConfig: VpcConfig?
    /// <p>Information about a webhook that connects repository events to a build project in
    ///       AWS CodeBuild.</p>
    public let webhook: Webhook?

    public init (
        arn: String? = nil,
        artifacts: ProjectArtifacts? = nil,
        badge: ProjectBadge? = nil,
        buildBatchConfig: ProjectBuildBatchConfig? = nil,
        cache: ProjectCache? = nil,
        concurrentBuildLimit: Int? = nil,
        created: Date? = nil,
        description: String? = nil,
        encryptionKey: String? = nil,
        environment: ProjectEnvironment? = nil,
        fileSystemLocations: [ProjectFileSystemLocation]? = nil,
        lastModified: Date? = nil,
        logsConfig: LogsConfig? = nil,
        name: String? = nil,
        queuedTimeoutInMinutes: Int? = nil,
        secondaryArtifacts: [ProjectArtifacts]? = nil,
        secondarySourceVersions: [ProjectSourceVersion]? = nil,
        secondarySources: [ProjectSource]? = nil,
        serviceRole: String? = nil,
        source: ProjectSource? = nil,
        sourceVersion: String? = nil,
        tags: [Tag]? = nil,
        timeoutInMinutes: Int? = nil,
        vpcConfig: VpcConfig? = nil,
        webhook: Webhook? = nil
    )
    {
        self.arn = arn
        self.artifacts = artifacts
        self.badge = badge
        self.buildBatchConfig = buildBatchConfig
        self.cache = cache
        self.concurrentBuildLimit = concurrentBuildLimit
        self.created = created
        self.description = description
        self.encryptionKey = encryptionKey
        self.environment = environment
        self.fileSystemLocations = fileSystemLocations
        self.lastModified = lastModified
        self.logsConfig = logsConfig
        self.name = name
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.tags = tags
        self.timeoutInMinutes = timeoutInMinutes
        self.vpcConfig = vpcConfig
        self.webhook = webhook
    }
}

extension Project: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Project(arn: \(String(describing: arn)), artifacts: \(String(describing: artifacts)), badge: \(String(describing: badge)), buildBatchConfig: \(String(describing: buildBatchConfig)), cache: \(String(describing: cache)), concurrentBuildLimit: \(String(describing: concurrentBuildLimit)), created: \(String(describing: created)), description: \(String(describing: description)), encryptionKey: \(String(describing: encryptionKey)), environment: \(String(describing: environment)), fileSystemLocations: \(String(describing: fileSystemLocations)), lastModified: \(String(describing: lastModified)), logsConfig: \(String(describing: logsConfig)), name: \(String(describing: name)), queuedTimeoutInMinutes: \(String(describing: queuedTimeoutInMinutes)), secondaryArtifacts: \(String(describing: secondaryArtifacts)), secondarySourceVersions: \(String(describing: secondarySourceVersions)), secondarySources: \(String(describing: secondarySources)), serviceRole: \(String(describing: serviceRole)), source: \(String(describing: source)), sourceVersion: \(String(describing: sourceVersion)), tags: \(String(describing: tags)), timeoutInMinutes: \(String(describing: timeoutInMinutes)), vpcConfig: \(String(describing: vpcConfig)), webhook: \(String(describing: webhook)))"}
}